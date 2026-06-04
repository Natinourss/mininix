# swww.nix
{pkgs, ...}:

{
  home.packages = with pkgs; [
    awww  # Animated wallpaper daemon for Wayland
  ];
}
