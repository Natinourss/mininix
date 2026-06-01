#kitty.nix
{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;

    settings = {
      # terminal
      term = "xterm-kitty";  #"xterm-256color";

      # font
      font_family = "JetBrainsMono Nerd Font";
      font_size = 12;

      # transparence
      background_opacity = "0.85";
      dynamic_background_opacity = true;

      # padding (important pour le style)
      window_padding_width = 10;

      # curseur
      cursor_shape = "beam";

      # perf
      enable_audio_bell = false;

      # scroll
      scrollback_lines = 10000;
    };

    # theme officiel catppuccin mocha
    themeFile = "Catppuccin-Mocha";
  };

  # theme kitty catppuccin (obligatoire)
  home.packages = with pkgs; [
    kitty-themes
  ];
}
