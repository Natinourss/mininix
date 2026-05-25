#git.nix
{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "Natinourss";
        email = "nathanorriols30@gmail.com";
      };
    };
  };
}
