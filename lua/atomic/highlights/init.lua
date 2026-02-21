local M = {}

function M.apply(c, config)
	local function hi(group, opts)
		vim.api.nvim_set_hl(0, group, opts)
	end

	-- Core highlights (always loaded)
	require("atomic.highlights.editor").apply(hi, c)
	require("atomic.highlights.syntax").apply(hi, c)
	require("atomic.highlights.diagnostics").apply(hi, c)
	require("atomic.highlights.lsp").apply(hi, c)
	require("atomic.highlights.treesitter").apply(hi, c)

	-- Plugin highlights (toggled by config)
	local plugins = config.plugins
	local plugin_modules = {
		telescope = "atomic.highlights.plugins.telescope",
		cmp = "atomic.highlights.plugins.cmp",
		gitsigns = "atomic.highlights.plugins.gitsigns",
		indent_blankline = "atomic.highlights.plugins.indent_blankline",
		notify = "atomic.highlights.plugins.notify",
		mini = "atomic.highlights.plugins.mini",
		lazy = "atomic.highlights.plugins.lazy",
		whichkey = "atomic.highlights.plugins.whichkey",
		neotree = "atomic.highlights.plugins.neotree",
		dashboard = "atomic.highlights.plugins.dashboard",
	}

	for name, mod in pairs(plugin_modules) do
		if plugins[name] ~= false then
			require(mod).apply(hi, c)
		end
	end

	-- User overrides (always win)
	for group, opts in pairs(config.overrides) do
		hi(group, opts)
	end
end

return M
