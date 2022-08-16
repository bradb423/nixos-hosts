{ config, pkgs, ... }:

{
  home-manager.users.brad.home.packages = [
    pkgs.fd
    pkgs.firefox
    pkgs.htop
    pkgs.libreoffice
    pkgs.neofetch
    pkgs.nixpkgs-fmt
    pkgs.onefetch
    pkgs.ripgrep
    pkgs.shfmt
    pkgs.tealdeer
  ];
}
