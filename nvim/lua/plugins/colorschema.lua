-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     opts = {
--       flavour = "mocha",
--       background = {
--         light = "latte",
--         dark = "mocha",
--       },
--       -- compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
--       -- transparent_background = vim.g.is_transparent,
--       transparent_background = true,
--       term_colors = true,
--       color_overrides = {
--         -- #1A1A2F #1D182E #171421, terminal background: #171421
--         mocha = { base = "#191724" },
--       },
--       highlight_overrides = {
--         all = function(colors)
--           return {
--             WinSeparator = { fg = "#554D80" },
--           }
--         end,
--       },
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         dashboard = true,
--         dap = true,
--         dap_ui = true,
--         telescope = {
--           enabled = true,
--           -- style = "nvchad",
--         },
--         indent_blankline = {
--           enabled = true,
--           scope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
--           colored_indent_levels = false,
--         },
--         which_key = false,
--         treesitter = true,
--         mason = true,
--         nvimtree = true,
--         lsp_saga = false,
--         markdown = true,
--         notify = true,
--         native_lsp = {
--           enabled = true,
--           virtual_text = {
--             errors = { "italic" },
--             hints = { "italic" },
--             warnings = { "italic" },
--             information = { "italic" },
--           },
--           underlines = {
--             errors = { "underline" },
--             hints = { "underline" },
--             warnings = { "underline" },
--             information = { "underline" },
--           },
--           inlay_hints = {
--             background = true,
--           },
--         },
--         mini = {
--           enabled = true,
--           indentscope_color = "lavender",
--         },
--       },
--     },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin-mocha",
--     },
--   },
-- }

function ColorMyPencils(color)
  color = color or "rose-pine-main"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {

  {
    "erikbackman/brightburn.vim",
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {},
    config = function()
      ColorMyPencils()
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    config = function()
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = false,
        bold = true,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        transparent = true, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = false },
          keywords = { italic = false },
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "dark", -- style for sidebars, see below
          floats = "dark", -- style for floating windows
        },
      })
    end,
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        disable_background = true,
        styles = {
          italic = false,
        },
      })

      ColorMyPencils()
    end,
  },
}
