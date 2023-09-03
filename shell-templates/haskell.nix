{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.ghc
    # The VSCode extensions for haskell require this to be here in order to work
    pkgs.haskell-language-server
    # pkgs.cabal-install
  ];
}
