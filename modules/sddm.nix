# sddm.nix
{ config, pkgs, ... }:

{
  services.displayManager = {
    defaultSession = "hyprland";

    sddm = {
      enable = true;
      wayland.enable = true;

      theme = "catppuccin-mocha-mauve";

      extraPackages = [
        pkgs.bibata-cursors
        pkgs.catppuccin-sddm
      ];

      settings = {
        Theme = {
          Current = "catppuccin-mocha-mauve";
          #Background = "/etc/nixos/wallpapers/Minimal_Squares.png";
          CursorTheme = "Bibata-Modern-Classic";
        };
      };
    };
  };

  environment.systemPackages = [
    pkgs.bibata-cursors
  ];

    environment.variables = {
    XCURSOR_THEME = "Bibata-Modern-Classic";
    XCURSOR_SIZE = "24";
  };

  programs.hyprland.enable = true;
}
