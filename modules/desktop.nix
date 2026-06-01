#desktop.nix
{ ... }:

{
  programs.steam.enable = true; #Steam 

  services.xserver.enable = true;

  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  services.xserver.xkb = {
    layout = "fr";
    variant = "azerty";
  };
}
