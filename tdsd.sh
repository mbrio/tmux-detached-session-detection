#!/usr/bin/env bash

DETACHED_COUNT_RES=`tmux ls | grep -v "(attached)" | wc -l`
DETACHED_COUNT=$((DETACHED_COUNT_RES + 0))

if [[ $DETACHED_COUNT -gt 0 ]]; then
  echo "There are detached tmux sessions on this machine.";
  exit;
fi
