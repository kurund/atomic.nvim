local M = {}

function M.apply(hi, c)
  hi("LazyButton",       { fg = c.fg_dim, bg = c.bg_surface })
  hi("LazyButtonActive", { fg = c.fg, bg = c.bg_hl, bold = true })
  hi("LazyH1",           { fg = c.bg, bg = c.orange, bold = true })
  hi("LazySpecial",      { fg = c.teal })
  hi("LazyProgressDone", { fg = c.orange })
  hi("LazyProgressTodo", { fg = c.bg_border })
end

return M
