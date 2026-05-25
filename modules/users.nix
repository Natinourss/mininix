#users.nix
{ pkgs, ... }:

{
  users.users.natinix = {
    isNormalUser = true;
    description = "natinix";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
}
