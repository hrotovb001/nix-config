{ pkgs, ... }:

{
  programs.nixvim = {
    enable = true;
    colorschemes.tokyonight = {
      enable = true;
      settings.transparent = true;
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
      { mode = "n"; key = "<leader>ff"; action = ":Telescope find_files<CR>"; options = { noremap = true; }; }
      { mode = "n"; key = "<leader>fg"; action = ":Telescope live_grep<CR>"; options = { noremap = true; }; }
      { mode = "n"; key = "<leader>fb"; action = ":Telescope buffers<CR>"; options = { noremap = true; }; }
      { mode = "n"; key = "<leader>fr"; action = ":Telescope resume<CR>"; options = { noremap = true; }; }
    ];
    plugins = {
      codeium-vim.enable = true;
      web-devicons.enable = true;
      telescope.enable = true;
    };
  };
}

  
