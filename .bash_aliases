#!/bin/bash

if [[ -f "$HOME/.private_aliases" ]]; then
  source "$HOME/.private_aliases"
fi

if [[ -f "$HOME/.common_aliases" ]]; then
  source "$HOME/.common_aliases"
fi
