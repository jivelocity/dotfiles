return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
			}
		end,
	},
}

-- return {
-- 	{
-- 		"catppuccin/nvim",
-- 		name = "catppuccin",
-- 		priority = 1000,
-- 		opts = {
-- 			flavour = "mocha",
-- 			background = {
-- 				light = "latte",
-- 				dark = "mocha",
-- 			},
-- 			transparent_background = true,
-- 			term_colors = true,
-- 			color_overrides = {
-- 				-- #1A1A2F #1D182E #171421, terminal background: #171421
-- 				mocha = { base = "#191724" },
-- 			},
-- 			highlight_overrides = {
-- 				all = function(colors)
-- 					return {
-- 						WinSeparator = { fg = "#554D80" },
-- 					}
-- 				end,
-- 			},
-- 			integrations = {
-- 				cmp = true,
-- 				gitsigns = true,
-- 				dashboard = true,
-- 				dap = true,
-- 				dap_ui = true,
-- 				telescope = {
-- 					enabled = true,
-- 					-- style = "nvchad",
-- 				},
-- 				indent_blankline = {
-- 					enabled = true,
-- 					scope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
-- 					colored_indent_levels = false,
-- 				},
-- 				which_key = false,
-- 				treesitter = true,
-- 				mason = true,
-- 				nvimtree = true,
-- 				lsp_saga = false,
-- 				markdown = true,
-- 				notify = true,
-- 				native_lsp = {
-- 					enabled = true,
-- 					virtual_text = {
-- 						errors = { "italic" },
-- 						hints = { "italic" },
-- 						warnings = { "italic" },
-- 						information = { "italic" },
-- 					},
-- 					underlines = {
-- 						errors = { "underline" },
-- 						hints = { "underline" },
-- 						warnings = { "underline" },
-- 						information = { "underline" },
-- 					},
-- 					inlay_hints = {
-- 						background = true,
-- 					},
-- 				},
-- 				mini = {
-- 					enabled = true,
-- 					indentscope_color = "lavender",
-- 				},
-- 			},
-- 		},
-- 	},
-- 	{
-- 		"LazyVim/LazyVim",
-- 		opts = {
-- 			colorscheme = "catppuccin-mocha",
-- 		},
-- 	},
-- }
