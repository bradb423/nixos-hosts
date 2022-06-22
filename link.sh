#!/usr/bin/env bash
set -eu

dir=$(pwd)

# Link the main two packages

sudo ln -sf "${dir}/configuration.nix" /etc/nixos/configuration.nix
