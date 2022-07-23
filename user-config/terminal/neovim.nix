_:

{
  home-manager.users.brad = { pkgs, ... }: {
    programs.neovim = {
      enable = true;
      vimAlias = true;
      plugins = with pkgs.vimPlugins; [ dracula-vim vim-nix ];
      extraConfig = ''
        set colorcolumn=80
      '';
    };
  };
}
