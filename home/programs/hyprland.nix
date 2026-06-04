# home hyprland.nix
{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      "$mod" = "SUPER";

      exec-once = [
        "waybar"
      ];

      bind = [
        "$mod, Q, exec, kitty"
        "$mod, M, exit"
        "$mod, E, exec, rofi -show drun"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 10;
        border_size = 2;
      };

      decoration = {
        rounding = 8;
      };
    };
  };
}
