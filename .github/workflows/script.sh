#! /usr/bin/env bash 

get_shell_type() {
  tty -s && echo "INTERACTIVE" || echo "NON-INTERACTIVE"
}

echo "Running script"
get_shell_type

