#!/bin/sh
# TeamClaude exits when no Claude account is configured. Keep the container up and retry, so the
# first login can be done from a shell in it: railway ssh --service teamclaude, then
# `teamclaude login --token`.
trap 'exit 0' TERM INT
while :; do
  teamclaude server --headless &
  wait $!
  echo "[start] teamclaude exited; retrying in 15s (run 'teamclaude login --token' if no account is set up)"
  sleep 15 &
  wait $!
done
