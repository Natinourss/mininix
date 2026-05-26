#system-packages.nix
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget
    fastfetch
    git
    tldr
    tree
    cmatrix
    cbonsai
  ];
}
