# Hello World in CUDA

This project demonstrates a simple "Hello World" program using CUDA, where "Hello World" is printed from both the CPU and the GPU.

## Overview

The code shows a basic example of how to:
- Launch a kernel from the CPU to execute on the GPU.
- Use `printf` inside a CUDA kernel to output text from the GPU.
- Synchronize CPU and GPU execution using `cudaDeviceSynchronize()`.

### Files
- `hello_world.cu`: The main CUDA source file.

## Requirements

- NVIDIA GPU with CUDA support
- [CUDA Toolkit](https://developer.nvidia.com/cuda-toolkit) installed
- `nvcc` (NVIDIA CUDA Compiler) for compiling the CUDA program

## How to Compile and Run

### Step 1: Clone the repository

Clone this repository to your local machine using the following command:

```bash
git clone https://github.com/yourusername/hello-world-cuda.git
Code Breakdown
The CPU prints "Hello World from the CPU!".
A CUDA kernel is launched on the GPU that prints "Hello World from the GPU!".
Synchronization is performed using cudaDeviceSynchronize() to ensure that the GPU finishes execution before the program ends.
