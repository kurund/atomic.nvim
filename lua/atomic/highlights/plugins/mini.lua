local M = {}

function M.apply(hi, c)
  hi("MiniIndentscopeSymbol", { fg = c.bg_hl })
end

return M
