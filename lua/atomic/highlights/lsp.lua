local M = {}

function M.apply(hi, c)
	hi("LspReferenceText", { bg = c.bg_hl })
	hi("LspReferenceRead", { bg = c.bg_hl })
	hi("LspReferenceWrite", { bg = c.bg_hl, bold = true })
	hi("LspSignatureActiveParameter", { fg = c.orange, bold = true })
end

return M
