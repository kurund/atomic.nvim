local M = {}

function M.apply(hi, c)
  hi("GitSignsAdd",    { fg = c.green })
  hi("GitSignsChange", { fg = c.blue })
  hi("GitSignsDelete", { fg = c.red })
end

return M
