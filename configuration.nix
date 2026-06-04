#configuration.nix
{ ... }:

{
  imports = [
    ./hardware-configuration.nix

    ./modules/boot.nix
    ./modules/sddm.nix
    ./modules/networking.nix
    ./modules/locale.nix
    #./modules/desktop.nix # For gnome setup
    ./modules/desktop/hyprland.nix # For Hyprland setup
    ./modules/audio.nix
    ./modules/users.nix
    ./modules/services.nix
    ./modules/nix.nix

    ./modules/hardware/nvidia.nix # For GPU nvidia
    ./modules/hardware/intel.nix # For CPU and GPU intel
    #./modules/hardware/amd.nix # For CPU and GPU amd

    ./system/packages.nix
  ];

  system.stateVersion = "25.11";
}
