#home.nix
{ config, pkgs, ... }:

{
  imports = [
    ./programs/git.nix
    ./programs/zsh.nix
    ./programs/kitty.nix
  ];

  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  home.username = "natinix";
  home.homeDirectory = "/home/natinix";

  home.stateVersion = "25.11";
}
