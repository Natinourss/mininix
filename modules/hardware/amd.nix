# amd.nix
{ config, pkgs, ... }:

{
  services.xserver.videoDrivers = [ "amdgpu" ];

  hardware.graphics.enable = true;

  environment.systemPackages = with pkgs; [
    vulkan-tools
    mesa
  ];

  hardware.cpu.amd.updateMicrocode = true;
}
