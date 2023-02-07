{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  name = "rust-shell";
  nativeBuildInputs = with pkgs; [ rustc cargo gcc ];
  buildInputs = with pkgs; [ rustfmt clippy cargo-nextest cargo-tarpaulin ];

  RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";
}
