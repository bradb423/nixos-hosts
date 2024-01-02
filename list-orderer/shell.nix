let
  unstable = import (fetchTarball ("https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz")) { };
  pkgs = import <nixpkgs> { };
in

pkgs.mkShell {
  name = "rust-shell";
  nativeBuildInputs = with pkgs; [
    unstable.rustc
    unstable.cargo
    unstable.gcc
    # Some crates may require the following (Such as when building Nushell)
    # pkg-config
    # openssl
  ];
  buildInputs = with pkgs; [
    rustfmt
    clippy
    cargo-nextest
    cargo-tarpaulin
  ];

  RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";
}
