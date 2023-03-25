<p align="left" width="90">
  <img src="../assets/logo.png" width="350">
  
Compact homemade cosmic muon telescope based on plastic scintillators, SiPMs and gaseous detector (2015-2022) <p>
  <b>Author: Valerio Pagliarino </b> <p>

# General description

This particle detector, aiming to detect muons reaching the sea level from cosmic rays, is made of two plastic scintillator tiles embedding a wavelength-shifting fiberoptics for light collection that is terminated on a Silicon Photomultiplier. The signal coming from these detectors is amplified by a board included into the CERN Cosmic Pi kit and then a digital discrimination signal is produced for both the channels. These two signals can used to produce a coincidence trigger. The analog signal is probed and is connected to a digital oscilloscope and to a DAQ system that consists in the Red Pitaya 10 bit board.

## Gaseous detector

An home-made gauseous detector is located in the middle of the two sintillator plates. This gaseous detector cannot show performances that can be compared with the one of research-grade devices, but exibits some advantages, in particular it does not required handling not-sealed gas containers.

The gas detector consists of a long fluorescent bulb that externally is equipped with circular copper electrodes with alternating polarity. Between each pair of electrodes the voltage is raised up to 550-750 V using a capacitive voltage multiplier. When a ionising particle interacts with the gas mixture (containing Ar, Kr, Hg) the electron / ion pair that is generated begins to drift thanks to the strong electric field with possibility to create avalanche multiplication and even some discharge effects (the ability of this detector to extract meaningful information on the specific ionization is considered to be very low). At the end of the drift and multiplication path, the charge carriers interacting with other gas atoms and with the internal coating of the bulb wall at high energy, produce a weak but detectable light pulse that is recorded by some APDs.

The major drawback of this detector is the low efficiency; the noise is removed by reading the detector in coincidence with the plastic scintillators. The biggest advantage are the low cost of such fluorescent tubes, that enable the design of large area devices, and the possibility to build a gaseous detector at home without having to deal with an open gas container.

This design has beein initially proposed by CERN as educational experiment: http://hst-archive.web.cern.ch/archiv/hst2000/teaching/expt/sascha/sascha.htm
More information on this design can be found here: https://www.astroparticelle.it/muon-detector2_eng.asp

## Principle of operation
(ref: Particle Detectors fundamentals and applications, H. Kolanoski N. Wermes, Oxford University Press, 2020.)

### Scintillators

The trigger signal is provided by a pair of plastic scintillator plates. These scintillators embed a WSL fiberoptics coupled with a Silicon Photomultiplier (SiPM) from SensL (3x3 mm). The plastic scintillators are characterized by a signal raising and falling within a fast time window and they are very suitable for counting and triggering applications. They cannot provide enough linearity for accurate specific energy loss measurements, but this is not required in our case.
The configuration is similar to the one in the following picture

 <p align="left" width="70">
  <img src="https://ars.els-cdn.com/content/image/1-s2.0-S2211379718318758-gr1.jpg" width="500">


In the following picture the signal from the two SiPMs is represented as recorded by a Rigol DS1054Z scope

 <p align="left" width="70">
  <img src="../data/Pulse_shaper_output_scope/DS1Z_QuickPrint8 copy.png" width="500">


### Gaseous detector

When charged particles or ionising radiation interact with a gas, a charge distribution is created along the ionization path, made of ions and free electrons. These charges start moving and it is possible to distinguish two separate motions that are superimposed:

- A random, unordered motion with a velocity distribution wich, not considering external fields, can be classically described by the Maxwell-Boltzmann distribution. An external electric or magnetic field can 'heat up' the carrier motion and hence change the distribution.

- A drift motion whose direction is determined by the external electric field.

The evolution of the distribution in the phase space is described by the Boltzmann transport equation

$\frac{df}{dt} = \frac{\partial f }{\partial t} + \frac{d\vec{r}}{dt} \nabla_{\vec{r}}f + \frac{d\vec{v}}{dt} \nabla_{\vec{v}}f = \frac{\partial f}{\partial t} |_{coll}$

In simpler term, the unordered motion having mean velocity equal to zero, but mean square velocity greater than zero, is responsible for transverse diffusion of charges with respect to the drift direction, while the electric field is responsible for acceleration in the drift direction. The charges are continuously exposed to interactions with other charges and from the macroscopic point of view this can be considered similar to a "viscous friction" force: it linearly depends on the velocity and therefore it compensate the acceleration at specific speed that becomes the drift velocity value. It depends on the electric field and on the parameters of the gas. 

$m \frac{d\vec{v}}{dt} = -e\vec{E} - k\vec{v}$

The drift velocity is found by rewriting the equation in the stationary condition dV/dt = 0, with 

$v_{drift} = -\frac{e}{k} \vec{E} = -\mu \vec{E}$

With $\mu$ being the mobility of charge carriers.
The k parameter can also be written in term of the characteristic time constant $\tau$ that is the average time between two collisions between drifting charge carriers.
If the energy gained by the electrons between two collision exceed the ionisation potential of the gas atoms, it is possible that a new ion-electron pair is generated and this exponential process whose gain is expressed by the first Towsend coefficient $\alpha_1$ is called multiplication. The number of pair in a given position of the drift region (r) depends on the initial number of primary charges $n_0$ as described in the following integral expression:

$n(r) = n_0 exp(\int \alpha(r) dr)$

and therefore the gain of the detector is

M = $n(r) / n_0 = exp(\int \alpha(r) dr)$

The detector is fully proportional (and therefore can be used for spectroscopic measurements) only if the gain is the same for each event and this requires the integral be calculated always between the same position coordinates: this happens only if the active region where the primary charges are generated is not inside the multiplication region. This is not true for this detector, therefore it cannot be used for energy loss measurements.

Another process that should be considered is that when the electric field is very strong, the avalanches can merge together and this effect in enanched by the fact that in case of recombination the emitted photons have enough energy to ionise the gas again. In this case the process can create plasma tubes where a large amount of charge can flow. These discharges should be limited by a fine tuning of the voltage across the polarization electrodes. The operation in this 'streamer mode' has the disadvantage of loosing the proportionality, but the amplitude of the generated signal is very high. Techniques for quenching the discharge after the signal has been generated are needed.

In all the research-grade detectors, the charge carriers finally hit an electrode, where the signal is extracted (the current i(t) can be calculated using the Shockley-Ramo theorem), filtered, amplified and acquired by the readout electronics. In our specific case at the cost of much lower efficiency, another mechanism is used: with a polarization voltage in the order of 550-750 
V the charge carriers gain enough energy to create UV-VIS photons when interacting with the gas atoms or with the phosphores contained in the internal coating of the glass tube. These phosphores have also a wavelenght-shifting effect on UV photons to the visible light wavelength range.

This design is not optimal since it is difficult to tune the polarization voltage to gain enough efficiency without producing too much discharges; furtermore, it seems that new fluorescent tubes employing different gas mixtures are more difficult to operate correctly.

The emitted radiation is collected by a strip of APDs working in geiger mode. The fluorescent tubes can be segmented by using several electrodes and in this way it is possible to achieve a basic position-sensitive detection. 

The different operation regions, mentioned before, of a gaseous detector are shown in the following plot:

 <p align="left" width="70">
  <img src="https://www.radiation-dosimetry.org/wp-content/uploads/2019/12/Gaseous-Ionization-Detectors-Regions-min.png" width="800">