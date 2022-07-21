{ lib, ... }:

{
  imports = [
    ./core/audio.nix
    ./core/bootloader.nix
    ./core/connections.nix
    ./core/fonts.nix
    ./core/locale.nix
    ./gnome.nix
    ./pkgs.nix
  ];
}
