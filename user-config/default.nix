{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;
  home.username = "brad";
  home.homeDirectory = "/home/brad";
  imports = [
    ./display/dconf.nix
    ./display/gtk.nix

    ./personal-packages.nix

    ./programming/codium.nix

    ./terminal/alacritty.nix
    ./terminal/bat.nix
    ./terminal/direnv.nix
    ./terminal/git.nix
    ./terminal/htop.nix
    ./terminal/lsd.nix
    ./terminal/helix.nix
    ./terminal/starship.nix
    ./terminal/zsh.nix
  ];
  home.stateVersion = "23.05";

}
