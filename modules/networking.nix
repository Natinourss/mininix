#networking.nix
{ ... }:

{
  networking.hostName = "mininix";
  networking.networkmanager.enable = true;
}
