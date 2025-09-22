### Microwatt + GPIO Controller

Hackathon Proposal – Microwatt Momentum 2025

### 📌 Project Overview

This project extends the Microwatt open-source POWER CPU core with a General Purpose Input/Output (GPIO) controller.

The GPIO peripheral allows Microwatt to:

Read inputs (e.g., switches, buttons, or sensors).

Write outputs (e.g., LEDs, buzzers, or actuators).

This demonstrates how Microwatt can act as the central processor in an embedded system by controlling external devices, a key requirement for real-world IoT and SoC applications.

### 🎯 Objectives

Design a GPIO peripheral with memory-mapped registers for input/output.

Integrate the peripheral with the Microwatt CPU core on the OpenFrame platform.

Write a simple program that toggles an LED based on switch input.

Provide testbenches and simulation waveforms to verify functionality.

Document the design flow to ensure reproducibility for the community.


### Register Map

GPIO_IN (0x80000000) → Read-only register capturing external input pin values.

GPIO_OUT (0x80000004) → Read/Write register controlling output pins.

Example Software Flow

Read GPIO_IN.

If 1 → write 1 to GPIO_OUT (LED ON).

Else → write 0 to GPIO_OUT (LED OFF).

### 🔬 Verification Plan

Simulation (Required):

Use Verilator or GHDL to simulate Microwatt + GPIO.

Testbench drives input pins with patterns (0/1).

Expected output register changes are observed in GTKWave.

FPGA Demo (Optional, if hardware available):

Map input pins to board switches.

Map output pins to LEDs.

Run the C program → pressing a switch lights up an LED.

### 💻 Tools & Platforms

Microwatt Core: Microwatt GitHub

FPGA/ASIC Flow: Yosys, Verilator, GHDL, OpenLane, ChipFoundry OpenFrame

Software Toolchain: GCC for POWER, GDB

PDK: SKY130 standard cells (via OpenLane + ChipFoundry flow)

### 📑 Deliverables

RTL Files: Verilog/VHDL for GPIO peripheral (gpio.vhd / gpio.v).

Integration: Top-level wrapper connecting Microwatt + GPIO.

Testbenches: Input stimulus, expected output checks.

C Program: Example firmware toggling LED from switch input.

Simulation Results: Waveform screenshots (GTKWave).

Documentation: Block diagram, register map, usage instructions.

Final Round: Short video demo + screenshots of running system.

### 📜 Open-Source License

This project is licensed under the Apache 2.0 License.
See the LICENSE
 file for details.

### 🔗 References & Resources

Microwatt GitHub

OpenPOWER Foundation

ChipFoundry OpenFrame User Project

ChipIgnite Flow (Sky130)

ChipFoundry YouTube

### 🚀 Expected Outcome

By the end of the hackathon, this project will deliver:

A working Microwatt + GPIO SoC design.

Verified simulation results.

Optional FPGA demonstration video.

Open-source, reproducible flow for the community.

This beginner-friendly yet practical project highlights how open-source CPUs can integrate with simple peripherals to create useful embedded systems.
