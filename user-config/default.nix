{ lib, ... }:

{
  imports = [
    ./display/gtk.nix

    ./programming/codium.nix

    ./terminal/alacritty.nix
    ./terminal/bat.nix
    ./terminal/direnv.nix
    ./terminal/git.nix
    ./terminal/lsd.nix
    ./terminal/neovim.nix
    ./terminal/starship.nix
    ./terminal/zsh.nix
  ];

}
