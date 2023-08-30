_:

{
  home-manager.users.brad = { pkgs, ... }: {
    programs.helix = {
      enable = true;
      settings = {
        theme = "base16_default_dark";
      };
    };
    xdg.desktopEntries.Helix = {
      name = "Helix";
      exec = "hx";
      noDisplay = true;
    };
  };
}
