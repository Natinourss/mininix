#nix.nix
{ ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
