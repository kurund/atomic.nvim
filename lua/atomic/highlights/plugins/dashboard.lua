local M = {}

function M.apply(hi, c)
  hi("DashboardHeader",   { fg = c.orange })
  hi("DashboardFooter",   { fg = c.fg_muted, italic = true })
  hi("DashboardShortCut", { fg = c.teal })
  hi("DashboardKey",      { fg = c.orange })
  hi("DashboardDesc",     { fg = c.fg_dim })
  hi("DashboardIcon",     { fg = c.teal })
end

return M
