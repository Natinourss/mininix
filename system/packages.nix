#system-packages.nix
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    wget
    fastfetch
    git
    tldr
    tree
    cmatrix
    cbonsai
  ];
}
