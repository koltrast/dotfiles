------------------------------------------------------------------------------
-- Keymaps configuration file
------------------------------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

------------------------------------------------------------------------------
-- Bépo
------------------------------------------------------------------------------
-- {W} > [É]
map('n', 'é', 'w', default_opts)
map('n', 'É', 'W', default_opts)
map('n', 'w', '<C-w>', default_opts)
map('n', 'W', '<C-w><C-w>', default_opts)

-- [HJKL] > {CTSR}
map('', 'c', 'h', default_opts)    -- left
map('', 'r', 'l', default_opts)    -- right
map('', 't', 'j', default_opts)    -- up
map('', 's', 'k', default_opts)    -- down
map('', 'C', 'H', default_opts)    -- up of screen
map('', 'R', 'L', default_opts)    -- bottom of screen
map('', 'T', 'J', default_opts)    -- join
map('', 'S', 'K', default_opts)    -- help
map('n', 'zs', 'zj', default_opts)  -- next fold
map('n', 'zt', 'zk', default_opts)  -- prev fold

-- {HJKL} < [CTSR]
-- {J} = up to
map('', 'j', 't', default_opts)    -- next
map('', 'J', 'T', default_opts)    -- prev
-- {L} = change
map('', 'l', 'c', default_opts)    -- wait a movment
map('', 'L', 'C', default_opts)    -- to the end of line
-- {H} = replace
map('', 'h', 'r', default_opts)    -- a character
map('', 'H', 'R', default_opts)    -- replace mode
-- {K} = substitute
map('', 'k', 's', default_opts)    -- character
map('', 'K', 'S', default_opts)    -- line
-- spell
map('n', ']k', ']s', default_opts)
map('n', '[k', '[s', default_opts)

-- Disambiguation of {g}
map('n', 'gs', 'gk', default_opts)  -- prev line
map('n', 'gt', 'gj', default_opts)  -- next line
map('n', 'gb', 'gT', default_opts)  -- prev tab
map('n', 'gé', 'gt', default_opts)  -- next tab
map('n', 'g"', 'g0', default_opts)  -- begining of screen line

-- direct access to <>
map('n', '«', '<', default_opts)
map('n', '»', '>', default_opts)

map('n', 'wt', '<C-w>j', default_opts)
map('n', 'ws', '<C-w>k', default_opts)
map('n', 'wc', '<C-w>h', default_opts)
map('n', 'wr', '<C-w>l', default_opts)
map('n', 'wd', '<C-w>c', default_opts)
map('n', 'wo', '<C-w>s', default_opts)
map('n', 'wp', '<C-w>o', default_opts)
map('n', 'w<SPACE>', ':split<CR>', default_opts)
map('n', 'w<CR>', ':vsplit<CR>', default_opts)
