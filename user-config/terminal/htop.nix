_:

{
  programs.htop = {
    enable = true;
  };

  xdg.desktopEntries.htop = {
    name = "Htop";
    exec = "htop";
    noDisplay = true;
  };
}
