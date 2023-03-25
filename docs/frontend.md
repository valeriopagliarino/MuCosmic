# Frontend and analysis software

Jupyter Notebooks to be executed on the embedded Jupyter server of the Red Pitaya Stemlab DAQ board are provided. They are designed for acquisition, online data processing and for offline data processing and analysis.

### Notebooks:

- [SiPM.ipynb](../frontend/SiPM.ipynb) - Data analysis notebook using the scientific Python libraries and the Python wrapper of the C++ CERN ROOT data analysis framework. This notebook can be used for the characterization of the SiPM used for the readout of the plastic scintillators. In particular, the code provided is able to compute the actual gain of the SiPM by calculating the time constant and the response to single photons. For these measurements the SiPM is not coupled with the WSL fiberoptics coming from the scintillator, instead, it is exposed to fast and weak light pulses coming from a blue LED connected to a pulse generator.

- [Continuous_acquisition.ipynb](../frontend/Continuous_acquisition.ipynb) - Notebook for automated and continuous acquisition of new events with storage to pickle files.

- [DigitalFilters_TOF.ipynb](../frontend/DigitalFilters_TOF.ipynb) - Notebook for performing time of arrival measurements with the two detectors. In particular, a digital filter for signal rising edge detection is implemented in software. Please consider that the hardware setup is not optimized for fast TOF (Time Of Flight) measurements: an hardware discriminators, faster ADCs or a TDC (Time to Digital Converter) are needed for TOF measurements of relativistic particles such as the cosmic muons.

- [GPS_RPi_integration.ipynb](../frontend/GPS_RPi_integration.ipynb) - This notebook is for labelling the cosmic ray events with data coming from some auxiliary sensor installed on the main board of the Cosmic Pi device. In particular GPS coordinates and timestamping is provided and it may be used for analysing data from cosmic ray showers. The data are read from the sensors by the Arduino Due board, that is connected to the Cosmic Pi main board and finally are sent to the Raspberry Pi Zero via a serial interface. At this point, the Red Pitaya DAQ board is able to retrieve these 'metadata' via Ethernet (TCP JSON request) since the Raspberry Pi zero and the Red Pitaya devices are connected to the same LAN.

- [Single_event_scope_view.ipynb](../frontend/Single_event_scope_view.ipynb) - This notebook enables the visualization of single events using an oscilloscope interface

- [Software_MCA.ipynb](../frontend/Software_MCA.ipynb) - This notebook implements a Multi Channel Analyzer for spectroscopy measurements using scintillators coupled to the SiPM. For spectroscopy measurements it is important to replace the plastic scintillator with more suitable inorganic scintillators such as NaI(Ti) or CsI(Ti).


