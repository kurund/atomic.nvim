local M = {}

---@type {light?: string, dark?: string}
M.styles = {}

function M.setup(opts)
	require("atomic.config").setup(opts)
end

function M.load()
	local config = require("atomic.config").options
	local style = config.style or "default"
	local bg = vim.o.background
	local style_bg = style == "light" and "light" or "dark"

	local style_names = {
		dark = "atomic-dark",
		light = "atomic-light",
	}

	if bg ~= style_bg then
		local expected_name = style_names[style] or "atomic"
		if vim.g.colors_name == expected_name then
			-- Re-triggered by background change: adapt style to match current background
			style = bg == "light" and (M.styles.light or "light") or (M.styles.dark or "default")
		else
			-- Fresh load: force background to match the requested style
			vim.o.background = style_bg
		end
	end

	M.styles[vim.o.background] = style

	if vim.g.colors_name then
		vim.cmd("hi clear")
	end
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.g.colors_name = style_names[style] or "atomic"
	vim.o.termguicolors = true

	local palette = require("atomic.palette").get(style, config.palette)

	require("atomic.highlights").apply(palette, config)
end

function M.get_colors()
	local config = require("atomic.config").options
	local style = config.style or "default"
	return require("atomic.palette").get(style, config.palette)
end

return M
