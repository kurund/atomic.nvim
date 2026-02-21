local M = {}

function M.apply(hi, c)
  hi("NotifyERRORBorder", { fg = c.red })
  hi("NotifyWARNBorder",  { fg = c.yellow })
  hi("NotifyINFOBorder",  { fg = c.teal })
  hi("NotifyDEBUGBorder", { fg = c.fg_muted })
  hi("NotifyTRACEBorder", { fg = c.purple })
  hi("NotifyERRORIcon",   { fg = c.red })
  hi("NotifyWARNIcon",    { fg = c.yellow })
  hi("NotifyINFOIcon",    { fg = c.teal })
  hi("NotifyDEBUGIcon",   { fg = c.fg_muted })
  hi("NotifyTRACEIcon",   { fg = c.purple })
  hi("NotifyERRORTitle",  { fg = c.red })
  hi("NotifyWARNTitle",   { fg = c.yellow })
  hi("NotifyINFOTitle",   { fg = c.teal })
  hi("NotifyDEBUGTitle",  { fg = c.fg_muted })
  hi("NotifyTRACETitle",  { fg = c.purple })
end

return M
