{ lib, ... }:

{
  imports = [
    ./core/bootloader.nix
    ./core/connections.nix
    ./core/locale.nix
    ./core/audio.nix
    ./gnome.nix
    ./pkgs.nix
  ];
}
