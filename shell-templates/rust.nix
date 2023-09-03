{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  name = "rust-shell";
  nativeBuildInputs = with pkgs; [
    rustc
    cargo
    gcc
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
