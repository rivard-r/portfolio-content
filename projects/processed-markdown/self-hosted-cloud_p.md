---
title: Self Hosted Cloud Storage and Portfolio Website 
date: 2026-04-28
tags: [python, jinja, networking, cloud, cybersecurity, fastAPI, web, full stack, system integration, docker, NAS]
thumbnail_color: "#1a1a2e"
summary: This website. Implemented through containerized docker services, a network accessible storage, and raspberry-pi cluster. Includes functionality for user account based access permissions, an nginx reverse proxy for traffic management,and automatic markdown files to project page post generation (obsidian workflow).  
status: in-progress 
---

## Overview

In the unending pursuit of features that increase user engagement, modern webstacks can suffer from bloat, leading to unresponsive latency and excessive hardware requirements. The guiding priciple for this website was minimalism; I built the project from the ground up, being very intentional about each dependnecy added to the stack. The result was a highly responsive CSS/HTML native site capable of running on a raspberry-pi 3B without sacrificng any functionality.

## Architecture
![diagram](./../diagrams/self-hosted-cloud_p-1.svg)

## Current status

This site in its present state. The backend pulls tagged entries from my Obsidian engineering notebook's markdown files and generates a new page for that project using Jinja templates. 

![diagram](./../diagrams/self-hosted-cloud_p-2.svg)
