#!/bin/bash

command -v docker >/dev/null 2>&1 || { echo >&2 "Docker is required but not installed. Aborting."; exit 1; }
command -v docker-compose >/dev/null 2>&1 || { 
    docker compose version >/dev/null 2>&1 || { echo >&2 "Docker Compose is required but not installed. Aborting."; exit 1; }
}

if command -v nvidia-smi >/dev/null 2>&1; then
    echo "NVIDIA GPU detected. Enabling hardware acceleration."
else
    echo "No NVIDIA GPU detected. Application will run in CPU mode."
fi

docker compose up -d

echo "----------------------------------------------------"
echo "Xylo System Deployment Complete"
echo "Interface: http://localhost:3001"
echo "Ollama Engine: http://localhost:11434"
echo "----------------------------------------------------"
