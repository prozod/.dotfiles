local set = vim.opt
-- map leader to space
vim.g.mapleader = " "
set.termguicolors = true

-- this local is equal to :set in vim
scriptencoding = "utf-8"
set.encoding = "utf-8"
set.fileencoding = "utf-8"
set.autoread = true
set.backupcopy = "yes"
set.expandtab = true
set.shiftwidth = 2
set.softtabstop = 2
set.tabstop = 2
set.updatetime = 50
set.exrc = true
set.relativenumber = true
set.hidden = true
set.nu = true
set.showmode = false
set.incsearch = true
set.swapfile = false
set.hlsearch = false
set.wrap = true
set.scrolloff = 8
set.errorbells = false
set.ruler = true
set.clipboard = "unnamedplus"
set.breakindent = true         -- keep indentation when lines break
set.breakindentopt = "shift:2" -- but shift it by 2 spaces
set.linebreak = true           -- break only at specific characters, :h breakat
set.completeopt = {
  "menuone",
  "noinsert",
  "noselect",
}
set.autoindent = true
set.smartindent = true
set.magic = true
set.number = true
set.visualbell = true
set.splitright = true
-- set.cursorcolumn = true
-- set.cursorline = true
set.signcolumn = "yes"
-- set.colorcolumn = "100"
set.cmdheight = 0
vim.opt.scroll = 14
vim.opt.laststatus = 3
vim.opt.listchars = {
  eol = "↴",
  extends = "›",
  precedes = "‹",
  nbsp = "␣",
  trail = "·",
  tab = "> ",
}
vim.opt.list = true

-- highlight on yank
vim.cmd('au TextYankPost * silent! lua vim.highlight.on_yank({ higroup = "IncSearch", timeout = 100 })')
vim.cmd([[hi Visual guifg=#101010 guibg=#F6AC1F gui=none]])

-- pythonprovider
vim.g["python3_host_prog"] = "/usr/bin/python3"

set.guicursor =
"n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- format on save
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])

-- Function to execute a command in the terminal
vim.api.nvim_exec([[
    augroup LatexCompile
        autocmd!
        autocmd BufWritePost *.tex silent !latexmk -pdf %:t
    augroup END
]], false)
