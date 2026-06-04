# hyprland.nix
{ pkgs, ... }:

{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    waybar
    wl-clipboard
    grim
    slurp
    dunst
    rofi-wayland
    kitty
  ];
}
