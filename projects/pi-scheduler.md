---
title: Raspberry Pi Cluster Scheduler
date: 2023-11-10
tags: [distributed-systems, python, networking]
thumbnail_color: "#1c1c1c"
summary: A minimal work-stealing job scheduler for a 6-node Pi cluster, written from scratch without Kubernetes.
status: complete
---

## Motivation

Kubernetes is overkill for a 6-node Pi cluster — the control plane alone saturates a Pi 3B. This project implements a lightweight work-stealing scheduler using raw TCP sockets and a gossip protocol for node health.

## Design

- **Coordinator**: Maintains a job queue and node capability map
- **Workers**: Steal jobs when their local queue is empty
- **Health**: Gossip-based failure detection with configurable phi accrual threshold

## Photo Demo

<figure>
    <img src="/media/pi-scheduler/000008630005.jpg" alt="Film Photo" style="width:100%">
    <figcaption>Fig.1 - Black and white film.</figcaption>
</figure>

## Video Demo
<video controls width="100%" preload="metadata">
  <source src="/media/pi-scheduler/DJI_0040.MP4" type="video/mp4">
</video>

## Lessons Learned

Work stealing with heterogeneous nodes (Pi 3B vs 4B) requires weighted steal thresholds — naive stealing starves the slower nodes.
