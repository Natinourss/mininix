# amd.nix
{ config, pkgs, ... }:

{
  # AMD GPU (Mesa / RADV)
  services.xserver.videoDrivers = [ "amdgpu" ];

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  # Vulkan (important pour gaming)
  environment.systemPackages = with pkgs; [
    vulkan-tools
    mesa
  ];

  hardware.cpu.amd.updateMicrocode = true;
}
