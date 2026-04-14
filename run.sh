#!/usr/bin/env bash
# Run tuiradio using the project's virtual environment.
# Usage:  ./run.sh
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -d "$DIR/.venv" ]]; then
    echo "Creating virtual environment…"
    python3 -m venv "$DIR/.venv"
    "$DIR/.venv/bin/pip" install -r "$DIR/requirements.txt"
fi

exec "$DIR/.venv/bin/python" "$DIR/tuiradio.py" "$@"
