{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  name = "Seashell";
  nativeBuildInputs = [
    pkgs.gcc
    pkgs.clang-tools
  ];
}
