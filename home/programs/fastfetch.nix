#fastfetch.nix
{ config, pkgs, ... }:

{
  programs.fastfetch = {
    enable = true;

    settings = {
      logo = {
        source = "nixos";
        padding = {
          top = 1;
          left = 2;
        };
      };

      display = {
        separator = "  ";
        color = "blue";
      };

      modules = [
        {
          type = "title";
          color = "mauve";
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
          color = "mauve";
        }
        {
          type = "wm";
          key = " WM";
          color = "pink";
        }
        {
          type = "terminal";
          key = " Terminal";
          color = "lavender";
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
          color = "peach";
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
}
