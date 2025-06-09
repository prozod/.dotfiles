return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy", -- Or `LspAttach`
  priority = 1000,    -- needs to be loaded in first
  config = function()
    require('tiny-inline-diagnostic').setup({
      preset = "minimal",
      transparent_bg = true,
      options = {
        -- Display the source of the diagnostic (e.g., basedpyright, vsserver, lua_ls etc.)
        show_source = {
          enabled = true,
          if_many = true,
        },
        break_line = {
          enabled = true, -- Enable the feature to break messages after a specific length
          after = 90,     -- Number of characters after which to break the line
        },
      }
    })
    vim.diagnostic.config({ virtual_text = false }) -- Only if needed in your configuration, if you already have native LSP diagnostics
  end
}
