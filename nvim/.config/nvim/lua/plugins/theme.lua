return {
  {
    "vague2k/vague.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('vague').setup({
        transparent = true
      })

      -- setup must be called before loading
      vim.cmd("colorscheme vague")

      vim.cmd([[ highlight TelescopeBorder guibg=none ]])
      vim.cmd([[ highlight TelescopeTitle guibg=none ]])

      vim.cmd("hi Normal guibg=none ctermbg=none")
      vim.cmd("hi NormalNC guibg=none ctermbg=none")
      vim.cmd("hi NormalFloat guibg=none ctermbg=none")
      vim.cmd("hi LineNr guibg=none ctermbg=none")
      vim.cmd("hi Folded guibg=none ctermbg=none")
      vim.cmd("hi NonText guibg=none ctermbg=none")
      vim.cmd("hi SpecialKey guibg=none ctermbg=none")
      vim.cmd("hi VertSplit guibg=none ctermbg=none")
      vim.cmd("hi CursorLineNr guibg=none ctermbg=none")
      vim.cmd("hi StatusLine guibg=none ctermbg=none")
      vim.cmd("hi EndOfBuffer guibg=none ctermbg=none")
      vim.cmd("hi SignColumn guibg=none ctermbg=none")
    end
  }
}

-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       require('catppuccin').setup({
--         transparent_background = true
--       })
--
--       -- setup must be called before loading
--       vim.cmd("colorscheme catppuccin")
--
--       vim.cmd([[ highlight TelescopeBorder guibg=none ]])
--       vim.cmd([[ highlight TelescopeTitle guibg=none ]])
--
--       vim.cmd("hi Normal guibg=none ctermbg=none")
--       vim.cmd("hi NormalNC guibg=none ctermbg=none")
--       vim.cmd("hi NormalFloat guibg=none ctermbg=none")
--       vim.cmd("hi LineNr guibg=none ctermbg=none")
--       vim.cmd("hi Folded guibg=none ctermbg=none")
--       vim.cmd("hi NonText guibg=none ctermbg=none")
--       vim.cmd("hi SpecialKey guibg=none ctermbg=none")
--       vim.cmd("hi VertSplit guibg=none ctermbg=none")
--       vim.cmd("hi CursorLineNr guibg=none ctermbg=none")
--       vim.cmd("hi StatusLine guibg=none ctermbg=none")
--       vim.cmd("hi EndOfBuffer guibg=none ctermbg=none")
--       vim.cmd("hi SignColumn guibg=none ctermbg=none")
--     end
--   }
-- }
