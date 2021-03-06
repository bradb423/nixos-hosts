{ config, ... }:

{
  home-manager.users.brad = { pkgs, ... }: {
    programs.vscode = {
      enable = true;
      package = pkgs.vscodium;
      extensions = with pkgs.vscode-extensions; [
        b4dm4n.vscode-nixpkgs-fmt
        bungcip.better-toml
        davidanson.vscode-markdownlint
        dracula-theme.theme-dracula
        eamodio.gitlens
        foxundermoon.shell-format
        jnoortheen.nix-ide
        matklad.rust-analyzer
        ms-python.python
        oderwat.indent-rainbow
        redhat.vscode-yaml
        shardulm94.trailing-spaces
        streetsidesoftware.code-spell-checker
        tabnine.tabnine-vscode
        timonwong.shellcheck
        yzhang.markdown-all-in-one
      ];
      userSettings = {
        "tabnine.experimentalAutoImports" = true;
        "workbench.colorTheme" = "Dracula";
        "files.autoSave" = "afterDelay";
        "python.languageserver" = "Jedi";
        "update.mode" = "none";
        "shellcheck.executablePath" = "/run/current-system/sw/bin/shfmt";
        "[markdown]" = {
          "editor.defaultFormatter" = "yzhang.markdown-all-in-one";
        };
        "[nix]" = {
          "editor.defaultFormatter" = "B4dM4n.nixpkgs-fmt";
        };
        "editor.rulers" = [80];
      };
    };
  };
}
