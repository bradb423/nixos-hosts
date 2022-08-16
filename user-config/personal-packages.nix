{ config, pkgs, ... }:

{
  home-manager.users.brad.home.packages = [
    pkgs.kitty
    fd
    firefox
    htop
    neofetch
    nixpkgs-fmt
    onefetch
    ripgrep
    shfmt
    tealdeer
  ];
}
