# There can be issues with creating a shell for Tor when using the stable
# channel. This is due to the old links for older Tor versions being deleted by
# default, meaning that tor on the stable channel, which is an older version
# of Tor, is not available by default.

# The solution to this is to use the unstable channel, provided that the
# unstable channel has the latest version of Tor.

let
  unstableTarball =
    fetchTarball
      https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz;
  pkgs = import <nixpkgs> { };
  unstable = import unstableTarball { };
in

with pkgs;

mkShell {
  name = "tor-shell";
  buildInputs = [
    unstable.tor-browser-bundle-bin
  ];
}
