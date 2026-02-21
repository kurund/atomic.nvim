local M = {}

M.default = {
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
	diag_error_bg = "#1e1215",
	diag_warn_bg = "#1e1a12",
	diag_info_bg = "#121a1e",
	diag_hint_bg = "#121e1c",
	none = "NONE",
}

M.dark = {
	bg = "#111111",
	bg_surface = "#1a1a1a",
	bg_border = "#262626",
	bg_hl = "#323232",
	fg = "#f5ecd7",
	fg_dim = "#d9cdb8",
	fg_muted = "#6a6a6a",
	orange = "#e05a2d",
	teal = "#2fb8b0",
	green = "#4dcb8a",
	yellow = "#e8c547",
	red = "#c9392b",
	blue = "#4a7fa5",
	purple = "#7b68b0",
	pink = "#c47a98",
	amber = "#d4953a",
	diag_error_bg = "#1a0c0c",
	diag_warn_bg = "#1a1508",
	diag_info_bg = "#0c121a",
	diag_hint_bg = "#0c1a16",
	none = "NONE",
}

function M.get(style, overrides)
	local base = M[style] or M.default
	return vim.tbl_extend("force", base, overrides or {})
end

return M
