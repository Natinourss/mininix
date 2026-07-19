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
    catppuccin-sddm
    nwg-displays
    networkmanagerapplet
    networkmanager_dmenu

    # fun
    cmatrix
    cbonsai

    # apps
    discord
    brave
    libreoffice
    steam

    # pentest
    nmap
    john
    hydra
    netcat
    wireshark

    # virtualisation
    qemu
    virt-manager
  ];
}
