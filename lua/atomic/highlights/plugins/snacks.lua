local M = {}

function M.apply(hi, c)
  hi("SnacksPickerDir", { fg = c.fg_muted })
end

return M
