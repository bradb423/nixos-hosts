{ config, pkgs, ... }:

{
  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.displayManager.gdm.wayland = true;

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
    gnome-font-viewer
    gnome-logs
    gnome-maps
    gnome-music
    gnome-system-monitor
    pkgs.gnome-text-editor
    gnome-weather
    hitori # sudoku game
    iagno # go game
    pkgs.gnome-connections
    seahorse # password manager
    simple-scan
    tali # poker game
    vinagre
    yelp
  ]);
}
