# 🚀 Verilog - Digital - Design - Basics

A collection of fundamental digital design modules implemented in **Verilog HDL**, covering essential building blocks used in modern digital systems. This repository is aimed at strengthening core concepts of **combinational and arithmetic logic design**.

---

## 📌 Overview

This project includes implementations of:

- Carry Lookahead Adder (CLA)
- Full Adder (FA)
- Supporting combinational logic modules

The goal is to build a **strong foundation in digital design using Verilog**, with a focus on **efficient arithmetic circuits** and modular design.

---

## 🧠 Concepts Covered

- Combinational Logic Design  
- Propagate & Generate Logic  
- Carry Lookahead Mechanism  
- Modular Verilog Coding  
- Structural vs Behavioral Modeling  

---

## 📂 Repository Structure

---

## ⚙️ Module Details

### 🔹 4-bit Full Adder (Ripple Carry)

- Basic implementation using cascading full adders
- Simpler but slower due to sequential carry propagation

---

### 🔹 4-bit Carry Lookahead Adder (CLA)

- Uses **Generate (G)** and **Propagate (P)** logic
- Faster than ripple carry adder
- Carry equations:

## 🧪 Simulation

Each module includes a testbench to verify correctness.

### Tools you can use:

- ModelSim  
- Vivado  
- Icarus Verilog + GTKWave  

### Steps:

```bash
# Compile
iverilog -o output CLA_4bit.v CLA_testbench.v

# Run
vvp output

# View waveform
gtkwave dump.vcd
