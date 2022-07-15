{ lib, config, ... }:

{
    home-manager.users.brad = { pkgs, ... }: {
        programs.alacritty = {
            enable = true;
            settings = {
                font = {
                    family = "Fira Code";
                    size = 10;
                };
            };
        };
    };
}
