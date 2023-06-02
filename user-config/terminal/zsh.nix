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
        code = "codium";
        gs = "git status";
        cp = "cp -i";
        ll = "lsd -alFh";
        ls = "lsd -aFh";
        sl = "lsd -aFh";
        lt = "lsd -aFh --tree";
        mkdir = "mkdir -pv";
        mv = "mv -i";
        naon = "nano";
        neofetch = "clear && neofetch";
        nfmt = "nixpkgs-fmt";
        nix-shell = "nix-shell --command zsh";
        nixup = "sudo nix-channel --update";
        nnao = "nano";
        onefetch = "clear && onefetch";
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
      initExtra = ''
# Useful git functions
gnew () {
  if [[ -z "$1" ]]; then
  echo "You must supply the name of the new branch!"
  echo "Usage: $0 branch_name"
  return 1
  fi

  # Create the new branch and checkout
  git checkout -b "$1"
}

# Short version of git checkout
gc () {
  if [[ -z "$1" ]]; then
  echo "You must tell me the branch you're switching to!"
  echo "Usage: $0 branch_name"
  return 1
  fi

  # Switch to the branch
  git checkout "$1"
}

gdel () {
  if [[ -z "$1" ]]; then
  echo "Tell me which branch to delete!"
  echo "Usage: $0 branch_name"
  return 1
  fi

  git branch -D "$1"
}

number_of_lines () {
  pattern='.py$\|.rs$\|.sh$\|.hs$\|.js$\|.nix$'
  result=$(git ls-files | grep "$pattern" | xargs wc -l | grep total)
  echo $result
}
      '';
    };
  };
}
