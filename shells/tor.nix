let
  unstableTarball =
    fetchTarball
      https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz;
  pkgs = import <nixpkgs> { };
  unstable = import unstableTarball { };
in

with pkgs;

mkShell {
  buildInputs = [
    unstable.tor-browser-bundle-bin
  ];
}
