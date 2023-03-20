{ config, pkgs, ... }:

{
  home-manager.users.brad.home.packages = [
    pkgs.calibre
    pkgs.fd
    pkgs.firefox
    pkgs.htop
    pkgs.libreoffice
    pkgs.neofetch
    pkgs.nixpkgs-fmt
    pkgs.nushell
    pkgs.onefetch
    pkgs.ripgrep
    pkgs.shellcheck
    pkgs.shfmt
    pkgs.tealdeer
    pkgs.tree
  ];
}
