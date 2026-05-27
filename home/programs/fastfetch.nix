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
        separator = " ➜ ";
      };

      modules = [
        "title"
        "separator"
        "os"
        "kernel"
        "uptime"
        "packages"
        "shell"
        "wm"
        "terminal"
        "cpu"
        "gpu"
        "memory"
        "disk"
      ];
    };
  };
}
