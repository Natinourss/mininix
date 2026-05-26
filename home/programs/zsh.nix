#zsh.nix
{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "eza -l";
      la = "eza -la";
      ls = "eza";
      cat = "bat";
      grep = "rg";
      g = "lazygit";
    };

    initContent = ''
      eval "$(starship init zsh)"
      eval "$(zoxide init zsh)"
    '';
  };

  home.packages = with pkgs; [
    eza
    bat
    ripgrep
  ];
}
