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
        ls = "ls -aFh --color=auto";
        ll = "ls -alFh --color=auto";
        c = "clear";
        mkdir = "mkdir -pv";
        mv = "mv -i";
        cp = "cp -i";
        rm = "rm -i";
        nnao = "nano";
        naon = "nano";
        vs = "codium . && exit";
        neofetch = "clear && neofetch";
        nix-shell = "nix-shell --command zsh";
        rebuild = "sudo nixos-rebuild switch";
        reboot = "sudo reboot now";
        nixup = "sudo nix-channel --update";
        clean = "nix-collect-garbage";
        superclean = "sudo nix-collect-garbage -d";
      };
    };
  };
}
