#starship.nix
{ ... }:

{
  programs.starship = {
    enable = true;

    settings = {
      add_newline = false;

      format = "$directory$git_branch$git_status$nix_shell$character";

      character = {
        success_symbol = "[❯](bold green)";
        error_symbol = "[❯](bold red)";
      };

      directory = {
        style = "bold lavender";
        truncation_length = 2;
      };

      git_branch = {
        symbol = " ";
        style = "bold mauve";
        format = "([$symbol$branch]($style) )";
      };

      git_status = {
        style = "red";
        format = "([$all_status$ahead_behind]($style) )";
        conflicted = "⚔️ ";
        ahead = "⇡";
        behind = "⇣";
        diverged = "⇕";
      };

      nix_shell = {
        symbol = " ";
        style = "bold blue";
        format = "([$symbol]($style) )";
      };

      cmd_duration = {
        disabled = true;
      };
    };
  };
}
