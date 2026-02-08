#!/bin/bash

### special characters
echo "All args passed to script: $@"
echo "Number of variables passed to script: $#"
echo "Script Name: $0"
echo "Present directory: $PWD"
echo "Who is running: $USER"
echo "Home directory of current user: $HOME"
echo "PID of this script: $$"
sleep 100 &
echo "PID of recently executed background process: $1"
echo "All args passed to script: $*"