{ pkgs, ... }:

{
  programs.nixvim = {
    enable = true;

    defaultEditor = true;

    colorschemes.catppuccin.enable = true;

    opts = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      tabstop = 2;
      expandtab = true;
    };

    plugins = {
      # UI
      lualine.enable = true;
      web-devicons.enable = true;

      # file explorer
      nvim-tree.enable = true;

      # fuzzy finder
      telescope.enable = true;

      # syntax
      treesitter = {
        enable = true;
        nixvimInjections = true;
      };

      # LSP
      lsp = {
        enable = true;

        servers = {
          nixd.enable = true;
          lua_ls.enable = true;
          ts_ls.enable = true;
        };
      };

      # autocomplete
      cmp = {
        enable = true;
        autoEnableSources = true;
      };
    };
  };
}
