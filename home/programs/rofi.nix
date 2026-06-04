# rofi.nix
{ config, pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi;

    theme = "~/.config/rofi/themes/custom.rasi";

    extraConfig = {
      modi = "drun";
      show-icons = true;
      drun-display-format = "{icon} {name}";
      icon-theme = "Papirus";
    };
  };

  xdg.configFile."rofi/themes/custom.rasi".text = ''
    * {
      bg: #1e1e2ecc;
      bg-alt: #313244cc;
      fg: #cdd6f4;
      accent: #89b4fa;

      font: "JetBrainsMono Nerd Font 11";
    }

    window {
      location: center;
      anchor: center;
      width: 500px;

      background-color: @bg;
      border-radius: 16px;
      padding: 20px;
    }

    mainbox {
      spacing: 12px;
    }

    inputbar {
      background-color: @bg-alt;
      border-radius: 10px;
      padding: 12px;
    }

    listview {
      spacing: 8px;
      scrollbar: false;
    }

    element {
      padding: 10px;
      border-radius: 10px;
    }

    element selected {
      background-color: @accent;
      text-color: #1e1e2e;
    }

    element-icon {
      size: 28px;
      margin: 0 12px 0 0;
    }
  '';
}
