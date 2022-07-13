{ lib, config, ... }:

{
    home-manager.users.brad = {pkgs, ... }: {
        programs.lsd = {
            enable = true;
        };
    };
}