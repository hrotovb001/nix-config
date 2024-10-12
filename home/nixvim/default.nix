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
      fixeol = false;
    };
    globals.mapleader = " ";
    keymaps = [
      { mode = "n"; key = "<leader>pv"; action = ":Ex<CR>"; options = { noremap = true; }; }
    ];
  };
}

  
