return {
  { "L3MON4D3/LuaSnip", keys = {} },
  {
    "saghen/blink.cmp",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    -- event = "InsertEnter",
    version = "*",
    config = function()
      vim.cmd('highlight Pmenu guibg=none')
      vim.cmd('highlight PmenuExtra guibg=none')
      vim.cmd('highlight FloatBorder guibg=none')
      vim.cmd('highlight NormalFloat guibg=none')

      require("blink.cmp").setup({
        snippets = { preset = "luasnip" },
        signature = { enabled = true },
        appearance = {
          use_nvim_cmp_as_default = false,
          nerd_font_variant = "normal",
        },
        sources = {
          per_filetype = {
            codecompanion = { "codecompanion" },
          },
          default = { "lazydev", "lsp", "path", "snippets", "buffer" },
          providers = {
            cmdline = {
              min_keyword_length = 2,
            },
            lazydev = {
              name = "LazyDev",
              module = "lazydev.integrations.blink",
              -- make lazydev completions top priority (see `:h blink.cmp`)
              score_offset = 100,
            },
          },
        },
        keymap = {
          ['<C-e>'] = {},
          ["<C-f>"] = {},
          ['<C-e>'] = { "accept" },
        },
        cmdline = {
          enabled = false,
          completion = { menu = { auto_show = true } },
          keymap = {
            ["<CR>"] = { "accept_and_enter", "fallback" },
          },
        },
        completion = {
          menu = {
            border = nil,
            scrolloff = 1,
            scrollbar = false,
            draw = {
              columns = {
                { "kind_icon" },
                { "label",      "label_description", gap = 1 },
                { "kind" },
                { "source_name" },
              },
            },
          },
          ghost_text = { enabled = true, },
          documentation = {
            window = {
              border = nil,
              scrollbar = false,
              winhighlight = 'Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc',
            },
            auto_show = true,
            auto_show_delay_ms = 500,
          },
        },
      })

      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}
