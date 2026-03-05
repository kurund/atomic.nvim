local M = {}

function M.apply(hi, c)
  hi("NeoTreeNormal",        { fg = c.fg_dim, bg = c.bg_surface })
  hi("NeoTreeNormalNC",      { fg = c.fg_dim, bg = c.bg_surface })
  hi("NeoTreeDirectoryName", { fg = c.teal })
  hi("NeoTreeDirectoryIcon", { fg = c.teal })
  hi("NeoTreeRootName",      { fg = c.orange, bold = true })
  hi("NeoTreeFileName",      { fg = c.fg_dim })
  hi("NeoTreeGitModified",   { fg = c.blue })
  hi("NeoTreeGitAdded",      { fg = c.green })
  hi("NeoTreeGitDeleted",    { fg = c.red })
  hi("NeoTreeGitUntracked",  { fg = c.fg_muted })
  hi("NeoTreeIndentMarker",  { fg = c.bg_border })
  hi("NeoTreeDimText",       { fg = c.fg_muted })
end

return M
