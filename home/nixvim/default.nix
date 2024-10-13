{ pkgs, ... }:

{
  programs.nixvim = {
    enable = true;
    colorschemes.tokyonight = {
      enable = true;
      settings = {
        transparent = true;
        on_colors = ''function (colors) colors.fg_gutter = "#b2b8cf" end'';
      };
    };
    opts = {
      tabstop = 4;
      shiftwidth = 4;
      expandtab = true;
      number = true;
      relativenumber = true;
      fixeol = false;
    };
    globals.mapleader = " ";
    keymaps = [
      { mode = "n"; key = "<leader>pv"; action = ":Ex<CR>"; options = { noremap = true; }; }
    ];
    plugins = {
      codeium-vim.enable = true;
      web-devicons.enable = true;
      telescope = {
        enable = true;
        keymaps = {
          "<leader>ff" = "find_files";
          "<leader>fg" = "live_grep";
          "<leader>fb" = "buffers";
          "<leader>fr" = "resume";
        };
      };
      lsp = {
        enable = true;
        servers = {
            jedi_language_server.enable = true;
        };
        keymaps.lspBuf = {
          K = "hover";
          gD = "references";
          gd = "definition";
          gi = "implementation";
          gt = "type_definition";
        };
      };
      treesitter = {
        enable = true;
        settings.highlight.enable = true;
      };
      cmp = {
        enable = true;
        autoEnableSources = true;
        settings.sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
        ];
      };
    };
  };
}

  
