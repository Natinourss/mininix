# kanshi.nix
{ config, pkgs, ... }:

{
  services.kanshi = {
    enable = true;

    systemdTarget = "hyprland-session.target";

    settings = [
      {
        profile.name = "laptop";

        profile.outputs = [
          {
            criteria = "eDP-1";
            status = "enable";
            mode = "2560x1600@240Hz";
            scale = 1.6;
          }
        ];
      }

      {
        profile.name = "external-only";

        profile.outputs = [
          {
            criteria = "eDP-1";
            status = "disable";
          }
          {
            criteria = "HDMI-A-1"; # à adapter si besoin
            status = "enable";
            mode = "1920x1080@60Hz";
            position = "0,0";
            scale = 1.0;
          }
        ];
      }

      {
        profile.name = "dual";

        profile.outputs = [
          {
            criteria = "eDP-1";
            status = "enable";
            mode = "2560x1600@240Hz";
            position = "0,0";
            scale = 1.6;
          }
          {
            criteria = "HDMI-A-1"; # à adapter si besoin
            status = "enable";
            mode = "1920x1080@60Hz";
            position = "2560,0";
            scale = 1.0;
          }
        ];
      }
    ];
  };
}

