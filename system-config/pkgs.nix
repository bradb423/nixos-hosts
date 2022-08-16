{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Core packages that I want on all systems using this configuration
    nano
    unzip
    wget
  ];
}
