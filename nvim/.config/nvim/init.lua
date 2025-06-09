require("settings.options")
require("core.lazy")
require("core.lsp")

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    require("settings.keymaps")
  end,
})
