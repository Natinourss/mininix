# thunar.nix
{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    thunar
    xfce.thunar-archive-plugin
    xfce.thunar-volman
    file-roller
  ];

  programs.thunar = {
    enable = true;
  };
}
