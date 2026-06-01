# pipes.nix
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    pipes
  ];

  programs.zsh.shellAliases = {
    pipes = "pipes.sh -t 1 -r 9999 -p 3";
  };
}
