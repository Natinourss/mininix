#system-packages.nix
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget
    git
    tldr
    tree
    cmatrix
    cbonsai
  ];
}
