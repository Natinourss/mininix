#nixvim.nix
{ pkgs, ... }:

{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    globals.mapleader = " ";

    colorschemes.catppuccin.enable = true;

    opts = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      tabstop = 2;
      expandtab = true;
      clipboard = "unnamedplus";
    };

    clipboard.providers.xclip.enable = true;

    keymaps = [
      {
        mode = "n";
        key = "<leader>e";
        action = ":NvimTreeToggle<CR>";
      }
      {
        mode = "n";
        key = "<leader>ff";
        action = ":Telescope find_files<CR>";
      }
      {
        mode = "n";
        key = "<leader>fg";
        action = ":Telescope live_grep<CR>";
      }
      {
        mode = "n";
        key = "<leader>tt";
        action = ":ToggleTerm<CR>";
      }
    ];

    plugins = {
      # UI
      lualine.enable = true;
      web-devicons.enable = true;

      # navigation
      nvim-tree.enable = true;
      telescope.enable = true;

      # syntax
      treesitter = {
        enable = true;
        nixvimInjections = true;

        grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
          bash
          python
          lua
          json
          yaml
          regex
          markdown
        ];
      };

      # LSP
      lsp = {
        enable = true;

        servers = {
          nixd.enable = true;
          lua_ls.enable = true;

          # pentest core
          pyright.enable = true;
          bashls.enable = true;
        };
      };

      # autocomplete
      cmp = {
        enable = true;
        autoEnableSources = true;
      };

      # git
      gitsigns.enable = true;

      # utils
      comment.enable = true;
      vim-surround.enable = true;

      # terminal intégré
      toggleterm = {
        enable = true;
        settings = {
          direction = "float";
        };
      };

      # OBSIDIAN
      obsidian = {
        enable = true;

        settings = {
          workspaces = [
            {
              name = "notes";
              path = "~/notes";
            }
          ];

          completion = {
            nvim_cmp = true;
          };

          new_notes_location = "notes_subdir";

          daily_notes = {
            folder = "daily";
          };
        };
      };
    };
  };
}

