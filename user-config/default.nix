{ lib, ... }:

{
  imports = [
    ./display/gtk.nix

    ./personal-packages.nix

    ./programming/codium.nix

    ./terminal/alacritty.nix
    ./terminal/bat.nix
    ./terminal/direnv.nix
    ./terminal/git.nix
    ./terminal/lsd.nix
    ./terminal/helix.nix
    ./terminal/starship.nix
    ./terminal/zsh.nix
  ];

}
