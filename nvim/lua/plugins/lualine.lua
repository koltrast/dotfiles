return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local is_tmux = os.getenv("TMUX") ~= nil
      if not is_tmux then
        opts.sections.lualine_z = {
          function()
            return " " .. os.date("%R")
          end,
        }
      else
        opts.sections.lualine_z = {}
      end
    end,
  },
}
