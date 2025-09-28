#!/usr/bin/env bash
set -e

# ‑- First run: copy default config if none exists
if [ ! -f /data/config.json ]; then
  mkdir -p /data
  cp /defaults/config.json /data/config.json
fi

# ‑- Launch Resilio Sync in no-daemon mode
exec rslsync --nodaemon --config /data/config.json
