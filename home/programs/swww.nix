# swww.nix
{pkgs, ...}:

{
  home.packages = with pkgs; [
    swww  # Animated wallpaper daemon for Wayland
  ];
}
