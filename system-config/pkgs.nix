{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Core packages that I want on all systems using this configuration
    fd
    firefox
    htop
    nano
    neofetch
    nixpkgs-fmt
    onefetch
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
