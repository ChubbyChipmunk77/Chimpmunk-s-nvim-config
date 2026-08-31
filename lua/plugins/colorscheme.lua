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
        transparent_mode = true,
      })
      vim.cmd.colorscheme("gruvbox")
    end,
  },

  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    priority = 900,
    config = function()
      -- Create an autocommand to force transparency whenever oxocarbon loads
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "oxocarbon",
        callback = function()
          local oxo_transparents = {
            "Normal",
            "NormalNC",
            "NormalFloat",
            "SignColumn",
            "SideBar",
            "Folded",
            "EndOfBuffer",
            "StatusLine",
            "StatusLineNC",
            "LineNr",
            "CursorLineNr",
          }

          for _, group in ipairs(oxo_transparents) do
            vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
          end
        end,
      })

      -- Now set the background and activate it
      vim.opt.background = "dark"
      vim.cmd("colorscheme oxocarbon")
    end,
  },

  {
    "tiagovla/tokyodark.nvim",
    opts = {
      transparent_background = true, -- <-- Added for Tokyodark
    },
    config = function(_, opts)
      require("tokyodark").setup(opts) -- calling setup is optional
      vim.cmd([[colorscheme tokyodark]])
    end,
  },
}
