{ pkgs ? import <nixpkgs> { } }:

let
  my-python-packages = p: with p; [
    black
    coverage
    pylint
    requests
    (opencv4.override { enableGtk2 = true; })
  ];
  my-python = pkgs.python3.withPackages my-python-packages;
in

pkgs.mkShell {
  name = "python-env";
  packages = [
    my-python
  ];
}

