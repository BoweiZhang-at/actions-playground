#! /usr/bin/env bash 

get_shell_type() {
  tty -s && echo "INTERACTIVE" || echo "NON-INTERACTIVE"
}

echo "Running script"
get_shell_type

if [ -t 0 ]; then
  echo "INTERACTIVE 2"
else
  echo "NON-INTERACTIVE 2"
fi

if tty -s; then
  echo "INTERACTIVE 3"
else
  echo "NON-INTERACTIVE 3"
fi

