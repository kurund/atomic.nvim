local M = {}

function M.apply(hi, c)
	hi("DiagnosticError", { fg = c.red })
	hi("DiagnosticWarn", { fg = c.yellow })
	hi("DiagnosticInfo", { fg = c.blue })
	hi("DiagnosticHint", { fg = c.teal })
	hi("DiagnosticUnderlineError", { sp = c.red, undercurl = true })
	hi("DiagnosticUnderlineWarn", { sp = c.yellow, undercurl = true })
	hi("DiagnosticUnderlineInfo", { sp = c.blue, undercurl = true })
	hi("DiagnosticUnderlineHint", { sp = c.teal, undercurl = true })
	hi("DiagnosticVirtualTextError", { fg = c.red, bg = c.diag_error_bg })
	hi("DiagnosticVirtualTextWarn", { fg = c.yellow, bg = c.diag_warn_bg })
	hi("DiagnosticVirtualTextInfo", { fg = c.blue, bg = c.diag_info_bg })
	hi("DiagnosticVirtualTextHint", { fg = c.teal, bg = c.diag_hint_bg })
	hi("DiagnosticUnnecessary", { fg = c.fg_muted })
	hi("DiagnosticDeprecated", { fg = c.fg_muted, strikethrough = true })
end

return M
