# rofi.nix
{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;

    theme = "custom";

    extraConfig = {
      modi = "drun";
      show-icons = true;
      icon-theme = "Colloid-Dark";
      display-drun = "Apps";
      drun-display-format = "{icon}  {name}";
    };
  };

  xdg.configFile."rofi/themes/custom.rasi".text = ''
    * {
      bg: rgba(30, 30, 46, 0.85);
      bg-alt: rgba(49, 50, 68, 0.85);
      fg: #cdd6f4;
      accent: #cba6f7;

      border-radius: 12px;
      font: "JetBrainsMono Nerd Font 11";
    }

    window {
      location: center;
      anchor: center;
      width: 500px;

      background-color: @bg;
      border: 2px;
      border-color: @accent;
      border-radius: 12px;
      padding: 15px;
    }

    mainbox {
      spacing: 10px;
    }

    inputbar {
      background-color: @bg-alt;
      border-radius: 8px;
      padding: 10px;
    }

    entry {
      placeholder: "Search...";
      text-color: @fg;
    }

    listview {
      spacing: 6px;
      scrollbar: false;
    }

    element {
      padding: 8px;
      border-radius: 8px;
      text-color: @fg;
    }

    element selected {
      background-color: @accent;
      text-color: #1e1e2e;
    }

    element-icon {
      size: 24px;
      margin: 0 10px 0 0;
    }
  '';
}
