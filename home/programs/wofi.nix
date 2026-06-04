# wofi.nix
{ config, pkgs, ... }:

{
  programs.wofi = {
    enable = true;

    settings = {
      show = "drun";
      width = "40%";
      lines = 6;
      prompt = "  Apps";
      layer = "overlay";
      allow_images = true;
    };

    style = ''
      window {
        background-color: rgba(30, 30, 46, 0.85);
        border: 2px solid #cba6f7;
        border-radius: 14px;
        font-family: "JetBrainsMono Nerd Font";
      }

      #outer-box {
        margin: 0px;
        padding: 10px;
        background-color: transparent;
      }

      #input {
        background-color: #313244;
        color: #cdd6f4;
        border: none;
        border-radius: 8px;
        padding: 10px;
        margin-bottom: 10px;
      }

      #inner-box {
        background-color: transparent;
        color: #cdd6f4;
      }

      #scroll {
        margin: 0px;
        padding: 0px;
      }

      #entry {
        color: #cdd6f4;
        background-color: transparent;
        padding: 10px;
        border-radius: 8px;
        margin-bottom: 4px;
      }

      #entry:selected {
        background-color: #cba6f7;
        color: #1e1e2e;
      }

      #entry:hover {
        background-color: rgba(203, 166, 247, 0.25);
      }

      #text {
        margin-left: 8px;
      }
    '';
  };
}
