#!/usr/bin/env bash

gh pr edit $1 --remove-label $2 || true
