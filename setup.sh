#!/bin/bash

die() {
  >&2 echo "$@"
  return 1
}

bindir="${PWD}/bin"

if [[ ! -e $bindir ]]; then
  die "bin dir: ${bindir} not found; did you run \`make\`?"
fi

export PATH="${bindir}${PATH:+:${PATH}}"
