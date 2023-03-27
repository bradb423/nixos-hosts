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
        eamodio.gitlens
        foxundermoon.shell-format
        golang.go
        haskell.haskell
        jnoortheen.nix-ide
        justusadam.language-haskell
        matklad.rust-analyzer
        ms-python.python
        oderwat.indent-rainbow
        redhat.vscode-yaml
        shardulm94.trailing-spaces
        streetsidesoftware.code-spell-checker
        timonwong.shellcheck
        xaver.clang-format
        yzhang.markdown-all-in-one
      ];
      enableUpdateCheck = false;
      enableExtensionUpdateCheck = false;
      userSettings = {
        "editor.fontFamily" = "'FiraCode Nerd Font'";
        "editor.fontSize" = 16;
        "files.autoSave" = "afterDelay";
        "workbench.editor.enablePreview" = false;
        "update.mode" = "none";
        "redhat.telemetry.enabled" = false;
        "shellcheck.executablePath" = "/home/brad/.nix-profile/bin/shellcheck";
        "shellformat.path" = "/home/brad/.nix-profile/bin/shfmt";
        "[markdown]" = {
          "editor.defaultFormatter" = "yzhang.markdown-all-in-one";
        };
        "[nix]" = {
          "editor.defaultFormatter" = "B4dM4n.nixpkgs-fmt";
        };
        "editor.rulers" = [ 80 ];
        "go.toolsManagement.checkForUpdates" = "proxy";
      };
    };
  };
}
