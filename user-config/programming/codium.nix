{ config, ... }:

{
  home-manager.users.brad = { pkgs, ... }: {
    programs.vscode = {
      enable = true;
      package = pkgs.vscodium;
      extensions = with pkgs.vscode-extensions; [
        bbenoist.nix
        bungcip.better-toml
        davidanson.vscode-markdownlint
        dracula-theme.theme-dracula
        eamodio.gitlens
        foxundermoon.shell-format
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
    };
  };
}
