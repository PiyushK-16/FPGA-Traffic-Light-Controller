# Design Notes

## Project

FPGA-Based Traffic Light Controller

---

## Design Methodology

The project was implemented using a Moore Finite State Machine (FSM).

The outputs depend only on the current state and not directly on the inputs.

This approach provides:

* Predictable operation
* Simple verification
* Easier FPGA implementation

---

## FSM States

### S0

North-South Green

East-West Red

Duration: 10 Clock Cycles

---

### S1

North-South Yellow

East-West Red

Duration: 3 Clock Cycles

---

### S2

North-South Red

East-West Green

Duration: 10 Clock Cycles

---

### S3

North-South Red

East-West Yellow

Duration: 3 Clock Cycles

---

## State Transition Sequence

S0 → S1 → S2 → S3 → S0

---

## Verification Strategy

The controller was verified using a Verilog testbench.

Verification checks included:

* Reset functionality
* State transitions
* Timer operation
* Output correctness

Waveforms were inspected using GTKWave.

---

## FPGA Deployment Strategy

The design is compatible with FPGA implementation using Xilinx Vivado.

Traffic signal outputs can be mapped to FPGA LEDs through an XDC constraints file.

---

## Future Improvements

* Pedestrian crossing support
* Emergency vehicle priority
* Adaptive timing control
* Vehicle sensor integration
* Smart city communication interface

---

## Learning Outcomes

This project demonstrates:

* RTL Design
* FSM Design
* Verilog HDL Coding
* Digital Verification
* Waveform Analysis
* FPGA Design Flow
