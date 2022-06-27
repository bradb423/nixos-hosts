{config, ...}:

{
  home-manager.users.brad = { pkgs, ... }: {
    programs.starship = {
      enable = true;
      enableZshIntegration = true;
      enableBashIntegration = true;
      settings = {
        add_newline = true;
      };
    };
  };
}
