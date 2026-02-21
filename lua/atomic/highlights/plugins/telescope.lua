local M = {}

function M.apply(hi, c)
  hi("TelescopeNormal",        { fg = c.fg_dim, bg = c.bg_surface })
  hi("TelescopeBorder",        { fg = c.bg_border, bg = c.bg_surface })
  hi("TelescopeTitle",         { fg = c.orange, bold = true })
  hi("TelescopePromptNormal",  { fg = c.fg, bg = c.bg_surface })
  hi("TelescopePromptBorder",  { fg = c.bg_border, bg = c.bg_surface })
  hi("TelescopePromptTitle",   { fg = c.orange, bold = true })
  hi("TelescopePromptPrefix",  { fg = c.orange })
  hi("TelescopeResultsNormal", { fg = c.fg_dim, bg = c.bg_surface })
  hi("TelescopeResultsBorder", { fg = c.bg_border, bg = c.bg_surface })
  hi("TelescopePreviewNormal", { fg = c.fg_dim, bg = c.bg })
  hi("TelescopePreviewBorder", { fg = c.bg_border, bg = c.bg })
  hi("TelescopePreviewTitle",  { fg = c.teal, bold = true })
  hi("TelescopeSelection",     { fg = c.fg, bg = c.bg_hl })
  hi("TelescopeMatching",      { fg = c.orange, bold = true })
end

return M
