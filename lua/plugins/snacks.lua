return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      opts.explorer = vim.tbl_deep_extend("force", opts.explorer or {}, {
        show_hidden = true,
        filters = {
          dotfiles = false, -- do not hide dotfiles
          exclude = {}, -- don’t exclude anything by pattern
        },
        git = {
          show_ignored = true, -- show even git-ignored files
        },
      })
      return opts
    end,
  },
}
