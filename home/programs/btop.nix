#btop.nix
{ config, pkgs, ... }:

{
  programs.btop = {
    enable = true;

    settings = {
      theme_background = false;
      truecolor = true;
    };
  };
}
