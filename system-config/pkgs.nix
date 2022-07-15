{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Core packages that I want on all systems using this configuration
    bat
    fd
    firefox
    htop
    nano
    neofetch
    nixpkgs-fmt
    ripgrep
    shfmt
    tealdeer
    unzip
    wget

    # Rust and C packages
    cargo
    clippy
    gcc
    rustc
    rustfmt

    # Python packages
    python3
  ];
}
