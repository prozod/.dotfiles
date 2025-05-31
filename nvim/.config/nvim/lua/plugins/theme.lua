-- return {
--   {
--     "EdenEast/nightfox.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       require('nightfox').setup({
--         options = {
--           transparent = true
--         }
--       })
--
--       -- setup must be called before loading
--       vim.cmd("colorscheme duskfox")
--
--       vim.cmd([[ highlight TelescopeBorder guibg=none ]])
--       vim.cmd([[ highlight TelescopeTitle guibg=none ]])
--
--       vim.cmd("hi Normal guibg=none ctermbg=none")
--       vim.cmd("hi NormalNC guibg=none ctermbg=none")
--       vim.cmd("hi NormalFloat guibg=none ctermbg=none")
--       vim.cmd("hi LineNr guibg=none ctermbg=none")
--       vim.cmd("hi Folded guibg=none ctermbg=none")
--       vim.cmd("hi NonText guibg=none ctermbg=none") vim.cmd("hi SpecialKey guibg=none ctermbg=none") vim.cmd("hi VertSplit guibg=none ctermbg=none")
--       vim.cmd("hi CursorLineNr guibg=none ctermbg=none")
--       vim.cmd("hi StatusLine guibg=none ctermbg=none")
--       vim.cmd("hi EndOfBuffer guibg=none ctermbg=none")
--       vim.cmd("hi SignColumn guibg=none ctermbg=none")
--     end
--   }
-- }

-- return {
--   "rebelot/kanagawa.nvim",
--   dependencies = {},
--   priority = 1000,
--   lazy = false,
--   config = function()
--     require('kanagawa').setup({
--       compile = false,  -- enable compiling the colorscheme
--       undercurl = true, -- enable undercurls
--       commentStyle = { italic = true },
--       functionStyle = {},
--       keywordStyle = { italic = true },
--       statementStyle = { bold = true },
--       typeStyle = {},
--       transparent = true,    -- do not set background color
--       dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
--       terminalColors = true, -- define vim.g.terminal_color_{0,17}
--       colors = {             -- add/modify theme and palette colors
--         palette = {},
--         theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--       },
--       overrides = function(colors) -- add/modify highlights
--         return {}
--       end,
--       theme = "wave",  -- Load "wave" theme when 'background' option is not set
--       background = {   -- map the value of 'background' option to a theme
--         dark = "wave", -- try "dragon" !
--         light = "lotus"
--       },
--     })
--
--     vim.cmd([[ colorscheme kanagawa ]])
--
--     vim.cmd([[ highlight TelescopeBorder guibg=none ]])
--     vim.cmd([[ highlight TelescopeTitle guibg=none ]])
--
--     vim.cmd("hi Normal guibg=none ctermbg=none")
--     vim.cmd("hi NormalNC guibg=none ctermbg=none")
--     vim.cmd("hi NormalFloat guibg=none ctermbg=none")
--     vim.cmd("hi LineNr guibg=none ctermbg=none")
--     vim.cmd("hi Folded guibg=none ctermbg=none")
--     vim.cmd("hi NonText guibg=none ctermbg=none")
--     vim.cmd("hi SpecialKey guibg=none ctermbg=none")
--     vim.cmd("hi VertSplit guibg=none ctermbg=none")
--     vim.cmd("hi CursorLineNr guibg=none ctermbg=none")
--     vim.cmd("hi StatusLine guibg=none ctermbg=none")
--     vim.cmd("hi EndOfBuffer guibg=none ctermbg=none")
--     vim.cmd("hi SignColumn guibg=none ctermbg=none")
--   end,
-- }

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require('catppuccin').setup({
        transparent_background = true
      })

      -- setup must be called before loading
      vim.cmd("colorscheme catppuccin")

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
