#home.nix
{ config, pkgs, inputs, ... }:

{
  imports = [
    ./programs/git.nix
    ./programs/zsh.nix
    ./programs/kitty.nix
    ./programs/starship.nix

    inputs.nixvim.homeModules.nixvim
    ./programs/nixvim.nix
  ];

  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    zoxide
    fzf
    lazygit
    nodejs
  ];

  home.username = "natinix";
  home.homeDirectory = "/home/natinix";

  catppuccin = {
    enable = true;
    flavor = "mocha";
  };

  programs.zoxide.enable = true;
  programs.fzf.enable = true;

  programs.fzf.defaultOptions = [
    "--height 40%"
    "--border"
  ];

  home.stateVersion = "25.11";
}
