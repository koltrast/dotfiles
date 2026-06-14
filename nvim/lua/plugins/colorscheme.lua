return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "auto", -- follow vim.o.background
      dark_variant = "main", -- use "main" when background=dark
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
