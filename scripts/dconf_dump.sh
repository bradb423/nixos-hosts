#!/usr/bin/env nix-shell
#! nix-shell -i bash -p dconf2nix

# The shebang above will allow this script to run within an interactivate bash
# session with dconf2nix installed

dconf dump / | dconf2nix > user-config/display/dconf.nix
