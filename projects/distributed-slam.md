---
title: Distributed Lidar SLAM
date: 2024-06-01
tags: [robotics, ros2, point-cloud]
thumbnail_color: "#0d2137"
summary: Multi-agent SLAM system using ROS2 and a shared occupancy grid over DDS, tested on three TurtleBot4s.
status: in-progress
---

## Overview

Single-robot SLAM breaks down in large environments due to loop closure latency. This project implements a distributed architecture where each agent maintains a local submap and merges into a shared global map via a peer-to-peer DDS topic.

## Architecture

Each robot runs `slam_toolbox` in lifelong mode. A custom ROS2 node subscribes to each agent's submap, aligns them using ICP, and publishes the merged map. No central server — any agent can be the merge coordinator.

## Current Status

Three TurtleBot4s successfully building a shared 40m x 40m map. Working on reducing ICP alignment error at submap boundaries.
