local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- must be set before calling require
vim.g.nvim_tree_indent_markers = 1 -- this option shows indent markers when folders are open

require('nvim-tree').setup {
    auto_close = true,
    view = {
        auto_resize = true,
    }
}

map('n', '<Leader>n', ':NvimTreeToggle<CR>', default_opts)

