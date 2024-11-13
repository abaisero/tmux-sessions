#!/bin/bash

# if the given session exists, attach to it if it does not exist, create it and
# initialize it with the respective session source-file

if [ $# != 1 ]; then
  echo "script requires exactly one argument --- the session name"
  exit 1
fi

session=$1
shift

session_source_file="$TMUX_SESSIONS_PATH/$session.conf"

if [ ! -f "$session_source_file" ]; then
  echo "session source '$session_source_file' does not exist."
  exit 1
fi

if ! tmux attach-session -d -t "=$session" &>/dev/null; then
  tmux new -s "$session" \; source-file -q "$session_source_file"
fi
