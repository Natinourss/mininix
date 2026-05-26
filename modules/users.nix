#users.nix
{ pkgs, ... }:

{
  users.users.natinix = {
    isNormalUser = true;
    description = "natinix";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [];
  };
}
