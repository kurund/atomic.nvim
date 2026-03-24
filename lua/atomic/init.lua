local M = {}

function M.setup(opts)
	require("atomic.config").setup(opts)
end

function M.load()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	local config = require("atomic.config").options
	local style = config.style or "default"

	local style_names = {
		dark = "atomic-dark",
		light = "atomic-light",
	}
	vim.g.colors_name = style_names[style] or "atomic"
	vim.o.termguicolors = true
	vim.o.background = style == "light" and "light" or "dark"

	local palette = require("atomic.palette").get(style, config.palette)

	require("atomic.highlights").apply(palette, config)
end

function M.get_colors()
	local config = require("atomic.config").options
	local style = config.style or "default"
	return require("atomic.palette").get(style, config.palette)
end

return M
