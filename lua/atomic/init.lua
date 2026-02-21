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

	vim.g.colors_name = "atomic"
	vim.o.termguicolors = true

	local config = require("atomic.config").options
	local palette = require("atomic.palette").get(config.palette)

	require("atomic.highlights").apply(palette, config)
end

function M.get_colors()
	local config = require("atomic.config").options
	return require("atomic.palette").get(config.palette)
end

return M
