#system-packages.nix
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # utils
    wget
    git
    tldr
    tree
    file
    ffmpeg
    imagemagick
    pciutils
    mesa-demos

    # fun
    cmatrix
    cbonsai

    # apps
    discord
    brave
    libreoffice

    # pentest
    nmap
    john
    hydra
    netcat

    # virtualisation
    qemu
    virt-manager
  ];
}
