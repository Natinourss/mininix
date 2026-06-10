# waybar.nix
{ config, pkgs, ... }:

{
  programs.waybar = {
    enable = true;

    style = ''
      * {
        font-family: JetBrainsMono Nerd Font;
        font-size: 13px;
        border: none;
      }

      window#waybar {
        background: rgba(30, 30, 46, 0.6); /* transparent catppuccin */
        color: #cdd6f4;
        border-radius: 12px;
      }

      #workspaces button {
        padding: 0 8px;
        color: #6c7086;
      }

      #workspaces button.active {
        color: #cba6f7;
      }

      #workspaces button:hover {
        color: #f5e0dc;
      }

      #clock, #cpu, #memory {
        padding: 0 10px;
      }
    '';

    settings = [
      {
        layer = "top";
        position = "top";

        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [ "cpu" "memory" ];

        "hyprland/workspaces" = {
          format = "{name}";
        };

        clock = {
          format = "  {:%H:%M}   {:%d/%m}";
          tooltip = false;
        };

        cpu = {
          format = " {usage}%";
        };

        memory = {
          format = " {used}%";
        };
      }
    ];
  };
}

