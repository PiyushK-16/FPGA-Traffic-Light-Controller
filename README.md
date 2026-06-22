# FPGA-Traffic-Light-Controller
# FPGA-Based Traffic Light Controller

## Overview

This project implements an FPGA-Based Traffic Light Controller using Verilog HDL and Finite State Machine (FSM) architecture.

The controller manages traffic flow at a four-way intersection by controlling North-South and East-West traffic signals through predefined states and timing intervals.

The design has been functionally verified through simulation and is suitable for FPGA implementation using Xilinx Vivado.

---

## Features

* FSM-Based Traffic Signal Control
* Moore State Machine Design
* Verilog RTL Implementation
* Timer-Based State Transitions
* Functional Verification using Testbench
* FPGA Deployment Ready
* GitHub Portfolio Project

---

## Architecture

Clock Input<br><br>
↓<br>
Timer Counter<br>
↓<br>
FSM Controller<br>
↓<br>
Output Logic<br>
↓<br>
Traffic Light Signals<br>

---

## FSM States

| State | North-South | East-West |
| ----- | ----------- | --------- |
| S0    | Green       | Red       |
| S1    | Yellow      | Red       |
| S2    | Red         | Green     |
| S3    | Red         | Yellow    |

State Sequence:

S0 → S1 → S2 → S3 → S0

---

## Tools Used

* Verilog HDL
* EDA Playground
* GTKWave
* Xilinx Vivado (Optional)
* GitHub

---

## Project Structure

FPGA-Traffic-Light-Controller/

├──rtl/<br>
├──tb/<br>
├──waveforms/<br>
├──images/<br>
├──reports/<br>
├──docs/<br>
└──README.md<br>

---

## Simulation

1. Open EDA Playground
2. Paste RTL Code
3. Paste Testbench
4. Select Icarus Verilog
5. Run Simulation
6. Open GTKWave
7. Verify State Transitions

---

## Results

The controller successfully transitions through all traffic signal states:

S0 → S1 → S2 → S3 → S0

Waveform verification confirms correct output behavior and timing.

---

## Skills Demonstrated

* RTL Design
* FSM Design
* Sequential Logic
* Combinational Logic
* Verification
* Waveform Analysis
* FPGA Design Flow

---

## Future Improvements

* Pedestrian Crossing Support
* Emergency Vehicle Priority
* Vehicle Detection Sensors
* Adaptive Traffic Timing
* Smart City Integration

---

## Author

Piyush Kumar Ahirwar

Computer Science & Engineering
Aspiring VLSI and FPGA Engineer

