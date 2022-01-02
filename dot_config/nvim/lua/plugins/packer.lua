-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim

local cmd = vim.cmd
cmd [[packadd packer.nvim]]

local packer = require 'packer'

-- Add packages
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'  -- packer can manage itself

  -- file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- icons
    },
    config = function() require'nvim-tree'.setup {} end
    }

  -- indent line
  use 'lukas-reineke/indent-blankline.nvim'

  -- autopair
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup() end
  }

  -- tagviewer
  use 'liuchengxu/vista.vim'

  -- treesitter interface
  use 'nvim-treesitter/nvim-treesitter'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }
  
  -- Git
  use 'tpope/vim-fugitive'
  
  -- git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
    require('gitsigns').setup() end
  }

  -- status line
  use 'nvim-lualine/lualine.nvim'
  
  -- no-distraction mode
  use 'junegunn/goyo.vim'

  -- highlight current line
  use 'junegunn/limelight.vim'
  
  -- colorschemes
  use 'folke/tokyonight.nvim'

  use { 'rose-pine/neovim', as = 'rose-pine' }

  -- LaTeX
  use {'lervag/vimtex', ft = {'tex'}}
  
  -- ledger
  use {'ledger/vim-ledger', ft = {'ledger'}}
  
  -- tidal
  use {'tidalcycles/vim-tidal', ft = {'tidal'}}
  
end)
