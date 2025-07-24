#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

./install.sh

IMAGE_NAME="fastapi-analytics-rbac"
CONTAINER_NAME="fastapi-analytics-rbac-c"

# Run the app container
docker run -d -p 8000:8000 --name "$CONTAINER_NAME" "$IMAGE_NAME"
echo "[run.sh] FastAPI analytics app is running at http://localhost:8000/"
