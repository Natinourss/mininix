# nvidia.nix
{ config, pkgs, ... }:

{
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.graphics.enable = true;

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    open = false; # seulement si GPU récent (Turing+)
    nvidiaSettings = true;
  };

  environment.systemPackages = with pkgs; [
    vulkan-tools
  ];
}
