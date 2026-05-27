#fastfetch.nix
{ config, pkgs, ... }:

{
  programs.fastfetch = {
    enable = true;

    settings = {
      logo = {
        type = "kitty";
        source = "${config.home.homeDirectory}/.config/fastfetch/nixos.png";

        width = 32;
      };

      display = {
        separator = "  ";
        color = "blue";
      };

      modules = [
        {
          type = "title";
          color = "magenta";
        }

        "separator"

        {
          type = "os";
          key = "󰣇 OS";
          color = "blue";
        }
        {
          type = "kernel";
          key = " Kernel";
          color = "yellow";
        }
        {
          type = "uptime";
          key = "󰅐 Uptime";
          color = "green";
        }
        {
          type = "packages";
          key = "󰏖 Packages";
          color = "teal";
        }

        "break"

        {
          type = "shell";
          key = " Shell";
          color = "magenta";
        }
        {
          type = "wm";
          key = " WM";
          color = "pink";
        }
        {
          type = "terminal";
          key = " Terminal";
          color = "blue";
        }

        "break"

        {
          type = "cpu";
          key = " CPU";
          color = "red";
        }
        {
          type = "gpu";
          key = "󰢮 GPU";
          color = "pink";
        }
        {
          type = "memory";
          key = "󰍛 Memory";
          color = "green";
        }

        "break"

        {
          type = "disk";
          key = "󰋊 Disk";
          color = "blue";
        }
      ];
    };
  };

  xdg.configFile."fastfetch/nixos.png".source = ./assets/nixos.png;
}
