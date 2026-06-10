#home.nix
{ config, pkgs, inputs, ... }:

{
  imports = [
    ./programs/git.nix
    ./programs/zsh.nix
    ./programs/kitty.nix
    ./programs/starship.nix
    ./programs/btop.nix
    ./programs/fastfetch.nix
    ./programs/cava.nix
    ./programs/pipes.nix
    ./programs/thunar.nix
    ./programs/gtk.nix
    ./programs/wofi.nix
    ./programs/awww.nix
    ./programs/waybar.nix

    inputs.nixvim.homeModules.nixvim
    ./programs/nixvim.nix

    ./programs/hyprland.nix
  ];

  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    zoxide
    fzf
    lazygit
    nodejs
    playerctl
    pwvucontrol
    lm_sensors

    # hyprland tools
    waybar
    rofi

    wofi
    thunar
    obsidian
    hyprlock
    wlogout
    wl-clipboard
    cliphist
  ];

  home.username = "natinix";
  home.homeDirectory = "/home/natinix";

  #catppuccin = {
    #enable = true;
    #flavor = "mocha";
  #};

  programs.zoxide.enable = true;
  programs.fzf.enable = true;

  programs.fzf.defaultOptions = [
    "--height 40%"
    "--border"
  ];

  home.stateVersion = "25.11";
}
