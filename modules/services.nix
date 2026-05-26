#services.nix
{ ... }:

{
  programs.zsh.enable = true;

  services.printing.enable = true;
  services.openssh.enable = true;

  programs.firefox.enable = true;

  programs.mtr.enable = true;

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
}
