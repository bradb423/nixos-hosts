{ lib, ... }:

{
  imports = [
    ./terminal/alacritty.nix
    ./terminal/lsd.nix
    ./terminal/git.nix
    ./terminal/zsh.nix
    ./terminal/starship.nix
    ./terminal/direnv.nix

    ./programming/codium.nix

    ./display/gtk.nix
  ];

}
