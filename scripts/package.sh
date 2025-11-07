#!/usr/bin/env bash
set -euo pipefail

# Determine repository root relative to this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
PROJECT_DIR="$REPO_ROOT/project"
OUTPUT_ARCHIVE="$REPO_ROOT/IsometricBomber.c3p"

if ! command -v zip >/dev/null 2>&1; then
  echo "Error: zip command not found. Please install zip to package the project." >&2
  exit 1
fi

if [ ! -d "$PROJECT_DIR" ]; then
  echo "Error: project directory not found at $PROJECT_DIR" >&2
  exit 1
fi

cd "$REPO_ROOT"

zip -r "${OUTPUT_ARCHIVE}" "$(basename "$PROJECT_DIR")" >/dev/null

echo "Packaged Construct 3 project to ${OUTPUT_ARCHIVE}"
