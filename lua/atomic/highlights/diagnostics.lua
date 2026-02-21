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
	hi("DiagnosticVirtualTextError", { fg = c.red, bg = "#1e1215" })
	hi("DiagnosticVirtualTextWarn", { fg = c.yellow, bg = "#1e1a12" })
	hi("DiagnosticVirtualTextInfo", { fg = c.blue, bg = "#121a1e" })
	hi("DiagnosticVirtualTextHint", { fg = c.teal, bg = "#121e1c" })
end

return M
