local M = {}

function M.apply(hi, c)
  hi("WhichKey",          { fg = c.orange })
  hi("WhichKeyGroup",     { fg = c.teal })
  hi("WhichKeyDesc",      { fg = c.fg_dim })
  hi("WhichKeySeparator", { fg = c.fg_muted })
  hi("WhichKeyValue",     { fg = c.fg_muted })
end

return M
