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
        bat = "bat -p";
        c = "clear";
        clean = "nix-collect-garbage";
        cp = "cp -i";
        ll = "lsd -alFh";
        ls = "lsd -aFh";
        sl = "lsd -aFh";
        mkdir = "mkdir -pv";
        mv = "mv -i";
        naon = "nano";
        neofetch = "clear && neofetch";
        nfmt = "nixpkgs-fmt";
        nix-shell = "nix-shell --command zsh";
        nixup = "sudo nix-channel --update";
        nnao = "nano";
        reboot = "sudo reboot now";
        rebuild = "sudo nixos-rebuild switch";
        rm = "rm -i";
        shfmt = "shfmt -l -w";
        superclean = "sudo nix-collect-garbage -d";
        u = "cd ..";
        uu = "cd ../..";
        uuu = "cd ../../..";
        vs = "codium . && exit";
      };
    };
  };
}
