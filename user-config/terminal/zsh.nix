{ config, ... }:

{
  home-manager.users.brad = { pkgs, ... }: {
    programs.zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableCompletion = true;
      enableSyntaxHighlighting = true;
      autocd = true;
      oh-my-zsh = {
        enable = true;
        plugins = [ "history" ];
      };
      shellAliases = {
c = "clear";
        clean = "nix-collect-garbage";
        cp = "cp -i";
        ll = "ls -alFh --color=auto";
        ls = "ls -aFh --color=auto";
        mkdir = "mkdir -pv";
        mv = "mv -i";
        naon = "nano";
        neofetch = "clear && neofetch";
        nix-shell = "nix-shell --command zsh";
        nixup = "sudo nix-channel --update";
        nnao = "nano";
        reboot = "sudo reboot now";
        rebuild = "sudo nixos-rebuild switch";
        rm = "rm -i";
        superclean = "sudo nix-collect-garbage -d";
        vs = "codium . && exit";
      };
    };
  };
}
