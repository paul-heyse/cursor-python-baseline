#!/usr/bin/env bash
set -euo pipefail
# Ensure we're in project env when Codex runs
if command -v uv >/dev/null 2>&1; then
  # Run Codex inside the uv-managed virtual environment
  UV_PROJECT_ENVIRONMENT=".venv" exec uv run codex "$@"
else
  echo "uv not found; please install it and rerun scripts/codex.sh"
  exit 2
fi
