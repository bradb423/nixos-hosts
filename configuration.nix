{config, pkgs, ...}:

{
  imports = [./hardware-configuration.nix];

  boot.loader.grub.efiSupport = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda";

  networking.hostName = "pc";
  networking.wireless.enable = true;

  time.timeZone = "Europe/London";

  networking.useDHCP = false;
  networking.interfaces.ens3.useDHCP = true;

  i18n.defaultLocale = "en_GB.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "uk";
  };

  services.xserver = {
    enable = true;
    layout = "gb";

    desktopManager = {
      xterm.enable = false;
    };

    displayManager = {
      defaultSession = "none+i3";
    };

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        dmenu
        i3status
        i3lock
        i3blocks
      ];
    };
  };

  sound.enable = true;
  hardware.pulseaudio.enable = true;

  users.users.brad = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  environment.systemPackages = with pkgs; [
    nano
    wget
    firefox
    neofetch
  ];

  services.openssh.enable = true;

  system.stateVersion = "21.11";
}
