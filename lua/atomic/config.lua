local M = {}

M.defaults = {
	palette = {},
	overrides = {},
	plugins = {
		telescope = true,
		cmp = true,
		gitsigns = true,
		indent_blankline = true,
		notify = true,
		mini = true,
		lazy = true,
		whichkey = true,
		neotree = true,
		dashboard = true,
	},
}

M.options = vim.deepcopy(M.defaults)

function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", vim.deepcopy(M.defaults), opts or {})
end

return M
