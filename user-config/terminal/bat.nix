{ config, pkgs, ... }:

{
  home-manager.users.brad = { pkgs, ... }: {
    programs.bat = {
      enable = true;
      config = { theme = "Dracula"; };
    };
  };
}
