#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/time.h>
#include <time.h>

#define CONTROL_WORD_GPIO_BASE_ADDR 0x41230000  // controlWordGPIO base address
#define RESPONSE_GPIO_BASE_ADDR 0x41220000  // responseGPIO base address
#define GPIO_DATA_OFFSET 0x00000000  // AXI GPIO data register offset
#define GPIO_DIRM_OFFSET 0x00000004  // AXI GPIO direction mode register offset

int main() {
    int memfd;
    void *control_word_gpio_base, *response_gpio_base;
    volatile u_int32_t *control_word_gpio_data, *response_gpio_data;
    volatile u_int32_t *control_word_gpio_dirm, *response_gpio_dirm;

    // Open /dev/mem to access physical memory
    memfd = open("/dev/mem", O_RDWR | O_SYNC);
    if (memfd == -1) {
        perror("open");
        return EXIT_FAILURE;
    }

    // Map controlWordGPIO base address to virtual memory
    control_word_gpio_base = mmap(NULL, 0x10000, PROT_READ | PROT_WRITE, MAP_SHARED, memfd, CONTROL_WORD_GPIO_BASE_ADDR);
    if (control_word_gpio_base == MAP_FAILED) {
        perror("mmap(controlWordGPIO)");
        close(memfd);
        return EXIT_FAILURE;
    }

    // Configure controlWordGPIO as output
    control_word_gpio_dirm = (volatile u_int32_t *)(control_word_gpio_base + GPIO_DIRM_OFFSET);
    *control_word_gpio_dirm = 0xFFFFFFFF;  // set all bits to 1 for output mode

    int failures = 0;

    // Map responseGPIO base address to virtual memory
    response_gpio_base = mmap(NULL, 0x10000, PROT_READ | PROT_WRITE, MAP_SHARED, memfd, RESPONSE_GPIO_BASE_ADDR);
    if (response_gpio_base == MAP_FAILED) {
        perror("mmap(responseGPIO)");
        munmap(control_word_gpio_base, 0x10000);
        close(memfd);
        return EXIT_FAILURE;
    }
    // Configure responseGPIO as input
    response_gpio_dirm = (volatile u_int32_t *)(response_gpio_base + GPIO_DIRM_OFFSET);
    *response_gpio_dirm = 0x00000000;  // set all bits to 0 for input mode

    unsigned long int counter = 0;

    clock_t t;
    t = clock();

    for (unsigned long int i = 4294967294; i > 0; i = i-1)
    {
        counter++;

        // Write a 32-bit word to controlWordGPIO data register
        control_word_gpio_data = (volatile u_int32_t *)(control_word_gpio_base + GPIO_DATA_OFFSET);
        u_int32_t out_word = 0 + (u_int32_t)i;
        *control_word_gpio_data = out_word;

        // Wait for the loopback connection to propagate the data (1 millisecond)
        //usleep(1);

        // Read a 32-bit word from responseGPIO data register
        response_gpio_data = (volatile u_int32_t *)(response_gpio_base + GPIO_DATA_OFFSET);
        u_int32_t in_word = *response_gpio_data;

        // Compare the two words
        if (i % 972967 == 0)
        {
            if (in_word == out_word) {
                printf("Data match! (in = %lu  out = %lu)\n", in_word, out_word);
            } else {
                printf("Data mismatch! (in = %lu  out = %lu)\n", in_word, out_word);
                failures++;
            }
        }
    }
    t = clock() - t;
    double time_taken = ((double)t)/CLOCKS_PER_SEC; // in second
    double time_per_op = time_taken / counter;

    printf("\n\nData failures = %d\nAverage time per operation = %d\n\n", failures, time_per_op);

    // Unmap virtual memory and close /dev/mem
    munmap(control_word_gpio_base, 0x10000);
    munmap(response_gpio_base, 0x10000);
    close(memfd);

    return EXIT_SUCCESS;
}
