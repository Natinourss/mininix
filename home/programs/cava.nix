# cava.nix
{ config, pkgs, ... }:

{
  programs.cava = {
    enable = true;
  };

  xdg.configFile."cava/config".text = ''
    [general]
    bars = 0
    bar_width = 3
    bar_spacing = 1
    sleep_timer = 1

    [input]
    method = pulse

    [output]
    method = ncurses
    channels = stereo
    mono_option = average
    reverse = 0

    [color]
    gradient = 1
    gradient_count = 6

    gradient_color_1 = '#f38ba8'
    gradient_color_2 = '#fab387'
    gradient_color_3 = '#f9e2af'
    gradient_color_4 = '#a6e3a1'
    gradient_color_5 = '#89b4fa'
    gradient_color_6 = '#cba6f7'

    [eq]
    1 = 1
    2 = 1
    3 = 1
    4 = 1
    5 = 1
  '';
}
