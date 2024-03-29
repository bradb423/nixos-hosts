{ config, ... }:

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    enableSyntaxHighlighting = true;
    autocd = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "history" "git" ];
    };
    shellAliases = {
      bat = "bat -p";
      c = "clear";
      clean = "nix-collect-garbage";
      code = "codium";
      cp = "cp -i";
      ll = "lsd -alFh";
      ls = "lsd -aFh";
      sl = "lsd -aFh";
      lt = "lsd -aFh --tree";
      mkdir = "mkdir -pv";
      mv = "mv -i";
      naon = "nano";
      nd = "nix develop --command zsh";
      neofetch = "clear && neofetch";
      nfmt = "nixpkgs-fmt";
      nix-shell = "nix-shell --command zsh";
      nixup = "cd ~/nixos-hosts && nix flake update";
      nnao = "nano";
      onefetch = "clear && onefetch";
      reboot = "sudo reboot now";
      rebuild = "cd ~/nixos-hosts && sudo nixos-rebuild --flake .#nixos switch";
      rm = "rm -i";
      shfmt = "shfmt -l -w";
      superclean = "sudo nix-collect-garbage -d";
      u = "cd ..";
      uu = "cd ../..";
      uuu = "cd ../../..";
      vs = "codium . && exit";
    };
    initExtra = ''
      number_of_lines () {
        pattern='.py$\|.rs$\|.sh$\|.hs$\|.js$\|.nix$'
        result=$(git ls-files | grep "$pattern" | xargs wc -l | grep total)
        echo $result
      }
    '';
  };
}
