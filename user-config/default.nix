{ lib, ... }:

{
  imports = [
    ./terminal/git.nix
    ./terminal/zsh.nix
    ./terminal/starship.nix
    ./terminal/direnv.nix

    ./programming/codium.nix
  ];

}
