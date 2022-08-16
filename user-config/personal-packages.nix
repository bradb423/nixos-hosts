{ config, pkgs, ... }:

{
  home-manager.users.brad.home.packages = [
    pkgs.fd
    pkgsfirefox
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
