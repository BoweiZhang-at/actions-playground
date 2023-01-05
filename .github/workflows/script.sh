#! /usr/bin/env bash 

get_shell_type() {
  tty -s && echo "INTERACTIVE" || echo "NON-INTERACTIVE"
}


echo "yo"
echo "haha"

echo "Running script"
get_shell_type

if [ ! -t 0 ]; then
  echo "NON-INTERACTIVE 2"
else
  echo "INTERACTIVE 2"
  echo "test"
fi

if tty -s; then
  echo "INTERACTIVE 3"
else
  echo "NON-INTERACTIVE 3"
fi

echo $-
if [[ $- == *i* ]]; then
  echo "INTERACTIVE 4"
else
  echo "NON-INTERACTIVE 4"
fi

echo $PS1
if [ -z "$PS1" ]; then
  echo "NON-INTERACTIVE 5"
else
  echo "INTERACTIVE 5"
fi
