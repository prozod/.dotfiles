-- return {
--   "lervag/vimtex",
--   priority = 1000,
--   config = function()
--     vim.cmd [[filetype plugin indent on]]
--     vim.cmd [[let maplocalleader = ","]]
--     vim.g.vimtex_view_method = 'zathura'
--     vim.g.vimtex_compiler_method = 'latexmk'
--     vim.g.tex_flavor = "latex"
--     vim.g.vimtex_quickfix_enabled = 1
--     vim.g.vimtex_quickfix_mode = 2
--     vim.g.vimtex_quickfix_open_on_warning = 0
--     vim.g.vimtex_compiler_silent = 0
--     vim.opt.conceallevel = 1
--     vim.g.vimtex_complete_enabled = 0
--   end,
-- }

return {
  "lervag/vimtex",
  ft = { "tex" },
  init = function()
    -- View with Zathura
    vim.g.vimtex_view_method = "zathura"

    -- Compiler
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_compiler_latexmk = {
      latex = 'xelatex',
    }


    -- Recommended settings
    vim.g.vimtex_mappings_enabled = 1
    vim.g.vimtex_quickfix_mode = 0
  end,
}
