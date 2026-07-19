# waybar.nix
{ config, pkgs, ... }:

{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 36;
        spacing = 4;
        reload_style_on_change = true;

        modules-left = [ "hyprland/workspaces" "mpris" ];
        modules-center = [ "hyprland/window" ];
        modules-right = [
          "pulseaudio"
          "tray"
          "network"
          "cpu"
          "memory"
          "clock"
        ];

        # ===== WORKSPACES =====
        "hyprland/workspaces" = {
          format = "{id}";
          sort-by-number = true;
        };

        # ===== WINDOW =====
        "hyprland/window" = {
          format = "{}";
          max-length = 50;
        };

        # ===== MUSIC =====
        mpris = {
          format = "{player_icon}";
          format-paused = "";
          player-icons = {
            default = "🎵";
          };
          on-click = "playerctl play-pause";
        };

        # ===== AUDIO =====
        pulseaudio = {
          format = "{volume}%";
          format-muted = "muted";
          on-click = "pwvucontrol";
        };

        # ===== TRAY =====
        tray = {
          spacing = 8;
        };

        # ===== NETWORK =====
        network = {
          format-wifi = "  {essid}";
          format-ethernet = "󰈀  {ipaddr}";
          format-disconnected = "⚠️  Disconnected";
          tooltip = true;

          on-click = "nm-applet";
        };

        # ===== CPU =====
        cpu = {
          format = "cpu {usage}%";
          interval = 5;
          on-click = "kitty -e btop";
        };

        # ===== RAM =====
        memory = {
          format = "ram {used}%";
          interval = 10;
          on-click = "kitty -e btop";
        };

        # ===== CLOCK =====
        clock = {
          format = "{:%H:%M}";
          format-alt = "{:%d/%m/%Y}";
          tooltip = false;
        };
      };
    };

    # ===== STYLE =====
    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font", sans-serif;
        font-size: 12px;
        border: none;
      }

      window#waybar {
        min-height: 28px;
        background: rgba(30, 30, 46, 0.5);
        border-radius: 12px;
        margin: 6px 12px;
        padding: 2px 6px;
      }

      #workspaces {
        background: rgba(49, 50, 68, 0.6);
        border-radius: 10px;
        padding: 2px 4px;
      }

      #workspaces button {
        padding: 2px 6px;
        margin: 2px;
        color: @subtext0;
        border-radius: 8px;
      }

      #workspaces button.active {
        background: @mauve;
        color: @base;
      }

      #workspaces button:hover {
        background: @surface1;
      }

      #cpu, #memory, #network, #clock, #pulseaudio, #mpris, #tray {
        background: rgba(49, 50, 68, 0.6);
        padding: 0px 8px;
        margin: 2px 3px;
        border-radius: 8px;
      }

      #window {
        color: @subtext1;
        font-style: italic;
      }
    '';
  };
}

