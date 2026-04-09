---
title: Neural PID Controller
date: 2024-03-15
tags: [control-systems, machine-learning, embedded]
thumbnail_color: "#1a1a2e"
summary: A self-tuning PID controller using a small LSTM network to adapt gains in real time on an STM32.
status: complete
---

## Overview

Traditional PID tuning relies on heuristics like Ziegler-Nichols, which perform poorly under nonlinear plant dynamics. This project replaces the gain-scheduling lookup table with a lightweight LSTM that observes the error signal and adjusts Kp, Ki, Kd continuously.

## Implementation

The LSTM runs inference on an STM32H7 at 480 MHz using CMSIS-NN quantized weights. Inference time is under 200μs per control loop cycle, well within the 1ms sampling period.

```c
// Core inference call
arm_nn_run(&lstm_ctx, error_buf, gain_buf);
apply_gains(gain_buf[0], gain_buf[1], gain_buf[2]);
```

## Results

- 40% reduction in settling time vs fixed-gain PID on a DC motor test bench
- Stable across 0–100% load variation
- Flash footprint: 48KB weights + 12KB runtime
