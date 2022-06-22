{ config, ...}:

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
        plugins = [ "history"];
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
      };
    };
  };
}
