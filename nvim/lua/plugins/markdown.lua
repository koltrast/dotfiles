return {
  {
    -- obsidian
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "Notes",
          path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Zettelkasten/",
        },
      },
      -- ui = {enable = false},
    },
  },

  --   {
  --     -- pretty markdown
  --     "MeanderingProgrammer/render-markdown.nvim",
  --     enabled = false,
  --     opts = {},
  --     dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
  --   },
  --
  --   {
  --     "iamcco/markdown-preview.nvim",
  --     cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  --     build = "npm install",
  --     init = function()
  --       vim.g.mkdp_filetypes = { "markdown" }
  --     end,
  --     ft = { "markdown" },
  --   },
}
