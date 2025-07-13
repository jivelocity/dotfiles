-- file: ~/.config/nvim/lua/plugins/lint.lua (atau di tempatmu)
return {
	"nvimtools/none-ls.nvim",
	opts = function(_, opts)
		local null_ls = require("null-ls")
		opts.sources = {
			null_ls.builtins.diagnostics.eslint_d,
			null_ls.builtins.code_actions.eslint_d,
			null_ls.builtins.formatting.eslint_d,
		}
	end,
}
