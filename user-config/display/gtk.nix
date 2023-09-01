{ pkgs, ... }:

{
  gtk = {
    enable = true;
    font = {
      name = "Fira Code 10";
    };
    theme = {
      name = "Dracula";
      package = pkgs.dracula-theme;
    };
  };
}
