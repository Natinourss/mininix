# intel.nix
{ config, pkgs, ... }:

{
  services.xserver.videoDrivers = [ "intel" ];

  hardware.graphics.enable = true;

  environment.systemPackages = with pkgs; [
    intel-media-driver
    intel-vaapi-driver
    vulkan-tools
  ];

  hardware.cpu.intel.updateMicrocode = true;
}
