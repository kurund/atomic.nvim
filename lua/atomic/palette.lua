local M = {}

M.colors = {
	bg = "#162830",
	bg_surface = "#1e3038",
	bg_border = "#2a3d44",
	bg_hl = "#354a52",
	fg = "#f5ecd7",
	fg_dim = "#d9cdb8",
	fg_muted = "#8a7d6b",
	orange = "#e05a2d",
	teal = "#2fb8b0",
	green = "#4dcb8a",
	yellow = "#e8c547",
	red = "#c9392b",
	blue = "#4a7fa5",
	purple = "#7b68b0",
	pink = "#c47a98",
	amber = "#d4953a",
	none = "NONE",
}

function M.get(overrides)
	return vim.tbl_extend("force", M.colors, overrides or {})
end

return M
