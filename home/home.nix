#home.nix
{ config, pkgs, ... }:

{
  imports = [
    ./programs/git.nix
    ./programs/zsh.nix
    ./programs/kitty.nix
    ./programs/starship.nix
  ];

  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  home.username = "natinix";
  home.homeDirectory = "/home/natinix";

  catppuccin = {
    enable = true;
    flavor = "mocha";
  };


  home.stateVersion = "25.11";
}
