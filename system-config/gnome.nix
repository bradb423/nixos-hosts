{ config, pkgs, ... }:

{
  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Exclude GNOME packages which I don't need
  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos
    gnome-tour
  ]) ++ (with pkgs.gnome; [
    atomix # puzzle game
    baobab
    cheese # webcam tool
    epiphany # web browser
    geary # email reader
    gedit # text editor
    gnome-calculator
    gnome-calendar
    gnome-characters
    gnome-clocks
    gnome-contacts
    gnome-maps
    gnome-music
    gnome-system-monitor
    gnome-weather
    hitori # sudoku game
    iagno # go game
    simple-scan
    tali # poker game
  ]);
}
