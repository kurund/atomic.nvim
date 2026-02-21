local M = {}

function M.apply(hi, c)
  hi("IblIndent",                   { fg = c.bg_border })
  hi("IblScope",                    { fg = c.bg_hl })
  hi("IndentBlanklineChar",         { fg = c.bg_border })
  hi("IndentBlanklineContextChar",  { fg = c.bg_hl })
end

return M
