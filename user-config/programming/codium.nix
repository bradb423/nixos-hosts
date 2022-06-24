{ config, ... }:

{
  home-manager.users.brad = { pkgs, ... }: {
    programs.vscode = {
      enable = true;
      package = pkgs.vscodium;
      extensions = with pkgs.vscode-extensions; [
        dracula-theme.theme-dracula
        yzhang.markdown-all-in-one
        timonwong.shellcheck
        oderwat.indent-rainbow
        foxundermoon.shell-format
        eamodio.gitlens
        bbenoist.nix
        shardulm94.trailing-spaces
        davidanson.vscode-markdownlint
        streetsidesoftware.code-spell-checker
        bungcip.better-toml
        redhat.vscode-yaml
        matklad.rust-analyzer
        ms-python.python
      ];
    };
  };
}
