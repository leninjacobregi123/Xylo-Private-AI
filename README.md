# Xylo System: Private Local Interface

<div align="center">
  <video src="https://github.com/leninjacobregi123/Xylo-Private-AI/raw/main/assets/video.mp4" width="100%" controls></video>
</div>

Xylo is a unified, high-performance platform for private interaction and voice synthesis. Built for researchers and developers, it provides a seamless bridge between local hardware and sophisticated processing engines.

## Core Pillars

### 1. Absolute Privacy & Localization
Xylo is designed to run entirely on your own hardware. Your data, conversations, and models never leave your local environment. It operates without an internet connection once models are retrieved, ensuring complete data sovereignty.

### 2. Effortless Model Integration
The system uses the Xylo Engine (Ollama) to manage a wide array of models. Adding a new capability is as simple as a single command:
```bash
docker exec -it xylo-engine ollama run llama3.2
```
The interface automatically detects and configures new models upon arrival.

### 3. Professional Architecture
A containerized microservices approach ensures stability and performance across Linux, Windows (WSL2), and macOS:
- **Xylo Interface**: Human-centric portal for interaction.
- **Xylo Engine**: The core processing unit with NVIDIA GPU optimization.
- **Xylo Voice**: High-fidelity, low-latency synthesis.

## Directory Structure
- `assets/`: UI resources and media.
- `config/`: System parameters.
- `data/`: Local persistent storage (ignored by Git).
- `scripts/`: Operational tools.

## Deployment

### Prerequisites
- Docker & Docker Compose
- NVIDIA Container Toolkit (Optional, for GPU acceleration)

### Quick Start
```bash
./scripts/setup.sh
```

Access the system at: **http://localhost:3001**
