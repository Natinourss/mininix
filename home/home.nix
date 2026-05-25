#home.nix
{ config, pkgs, ... }:

{
  imports = [
    ./programs/git.nix
    ./programs/zsh.nix
  ];

  home.username = "natinix";
  home.homeDirectory = "/home/natinix";

  home.stateVersion = "25.11";
}
