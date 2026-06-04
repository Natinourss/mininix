# home hyprland.nix
{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;

    configType = "hyprlang";

    # IMPORTANT → évite les configs parasites
    extraConfig = "";

    settings = {
      "$mainMod" = "SUPER";

      monitor = ",preferred,auto,1";

      env = [
        "GTK_THEME,Adwaita:dark"
        "QT_STYLE_OVERRIDE,Adwaita-dark"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
      ];

      exec-once = [
        "waybar"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
      ];

      bind = [
        # --- Apps ---
        "$mainMod, RETURN, exec, kitty"
        "$mainMod, D, exec, wofi --show drun"
        "$mainMod, E, exec, thunar"
        "$mainMod, O, exec, obsidian"
        "$mainMod, B, exec, brave"
        "$mainMod, L, exec, hyprlock"
        "$mainMod, X, exec, wlogout"

        # --- Screenshots ---
        ", Print, exec, grimblast copy output"
        "SHIFT, Print, exec, grimblast copy area"

        # --- Window ---
        "$mainMod, Q, killactive"
        "$mainMod, M, exit"
        "$mainMod, F, fullscreen"
        "$mainMod, SPACE, togglefloating"
        "$mainMod, P, pseudo"
        "$mainMod SHIFT, P, layoutmsg, togglesplit"

        # --- Focus ---
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        "$mainMod SHIFT, left, movewindow, l"
        "$mainMod SHIFT, right, movewindow, r"
        "$mainMod SHIFT, up, movewindow, u"
        "$mainMod SHIFT, down, movewindow, d"

        # --- Resize ---
        "$mainMod CTRL, left, resizeactive, -20 0"
        "$mainMod CTRL, right, resizeactive, 20 0"
        "$mainMod CTRL, up, resizeactive, 0 -20"
        "$mainMod CTRL, down, resizeactive, 0 20"

        # --- Clipboard ---
        "$mainMod, V, exec, cliphist list | wofi --dmenu | cliphist decode | wl-copy"

        # --- Workspaces ---
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 10;
        border_size = 2;
        allow_tearing = true;
      };

      decoration = {
        rounding = 10;

        blur = {
          enabled = true;
          size = 5;
          passes = 2;
        };
      };

      animations = {
        enabled = true;

        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

        animation = [
          "windows, 1, 7, myBezier"
          "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];
      };

      windowrule = [
      ];
    };
  };
}

