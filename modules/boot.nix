# boot.nix
{ config, pkgs, ... }:

{
  # Bootloader systemd-boot.
  boot.loader.systemd-boot.enable = false;
  boot.loader.efi.canTouchEfiVariables = true;

  # Bootloader GRUB
  boot.loader.grub = {
    enable = true;
    device = "nodev"; # UEFI
    efiSupport = true;
    useOSProber = true;
    default = 0;
    configurationLimit = 30;
  };
}
