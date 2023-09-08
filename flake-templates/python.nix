{
  description = "Python flake";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-22.11;
    flake-utils.url = github:numtide/flake-utils;
    mach-nix.url = github:davhau/mach-nix;
  };

  outputs = { self, nixpkgs, flake-utils, mach-nix, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        machNix = mach-nix.lib.${system};
        devEnv = machNix.mkPython {
          python = "python310";
          requirements = builtins.readFile ./requirements.txt;
        };
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = [
            devEnv
          ];
        };
      }
    );
}
