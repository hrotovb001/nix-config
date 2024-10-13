{
  keymaps = [
    { mode = "n"; key = "<C-h>"; action = ":SmartCursorMoveLeft<CR>"; options = { noremap = true; }; }
    { mode = "n"; key = "<C-j>"; action = ":SmartCursorMoveDown<CR>"; options = { noremap = true; }; }
    { mode = "n"; key = "<C-k>"; action = ":SmartCursorMoveUp<CR>"; options = { noremap = true; }; }
    { mode = "n"; key = "<C-l>"; action = ":SmartCursorMoveRight<CR>"; options = { noremap = true; }; }
    { mode = "n"; key = "<S-h>"; action = ":SmartResizeLeft<CR>"; options = { noremap = true; }; }
    { mode = "n"; key = "<S-j>"; action = ":SmartResizeDown<CR>"; options = { noremap = true; }; }
    { mode = "n"; key = "<S-k>"; action = ":SmartResizeUp<CR>"; options = { noremap = true; }; }
    { mode = "n"; key = "<S-l>"; action = ":SmartResizeRight<CR>"; options = { noremap = true; }; }
    { mode = "n"; key = "<leader>h"; action = ":SmartSwapLeft<CR>"; options = { noremap = true; }; }
    { mode = "n"; key = "<leader>j"; action = ":SmartSwapDown<CR>"; options = { noremap = true; }; }
    { mode = "n"; key = "<leader>k"; action = ":SmartSwapUp<CR>"; options = { noremap = true; }; }
    { mode = "n"; key = "<leader>l"; action = ":SmartSwapRight<CR>"; options = { noremap = true; }; }
  ];
}
    
