#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

IMAGE_NAME="fastapi-analytics-rbac"
CONTAINER_NAME="fastapi-analytics-rbac-c"

# Build Docker image
docker build -t "$IMAGE_NAME" .

# Remove any stopped container with the same name
docker rm -f "$CONTAINER_NAME" 2>/dev/null || true

echo "[install.sh] Docker image built successfully."
