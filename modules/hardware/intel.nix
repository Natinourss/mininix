# intel.nix
{ config, pkgs, ... }:

{
  # Intel GPU
  services.xserver.videoDrivers = [ "intel" ];

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  environment.systemPackages = with pkgs; [
    intel-media-driver
    vaapiIntel
    vulkan-tools
  ];

  hardware.cpu.intel.updateMicrocode = true;
}
