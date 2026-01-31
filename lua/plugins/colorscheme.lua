return {
  -- Disable catppuccin
  { "catppuccin/nvim", enabled = false },

  -- Add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
      })
      vim.cmd.colorscheme("gruvbox")
    end,
  },

  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    priority = 900,
    config = function()
      vim.opt.background = "dark" -- Or "light" for light mode
      vim.cmd("colorscheme oxocarbon")
    end,
  },

  {
    "tiagovla/tokyodark.nvim",
    opts = {
      -- custom options here
    },
    config = function(_, opts)
      require("tokyodark").setup(opts) -- calling setup is optional
      vim.cmd([[colorscheme tokyodark]])
    end,
  },
}
