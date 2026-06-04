# sddm.nix
{ config, pkgs, ... }:

{
  services.displayManager = {
    defaultSession = "hyprland";

    sddm = {
      enable = true;
      wayland.enable = true;
    };
  };

  programs.hyprland.enable = true;
}
