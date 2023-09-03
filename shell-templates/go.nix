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
    unstable.go
    unstable.go-tools
    unstable.gopls
    unstable.go-outline
    unstable.gocode
    unstable.gopkgs
    unstable.gocode-gomod
    unstable.godef
    unstable.golint
    unstable.delve
  ];
}
