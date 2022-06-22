{ config, ... }:

{
  home-manager.users.brad = { pkgs, ... }: {
    programs.git = {
      enable = true;
      userName = "Bradley Burns";
      userEmail = "bradleyburns00@gmail.com";
      signing = {
        key = "5BC897D9B641C86A";
        signByDefault = true;
      };
    };
  };
}
