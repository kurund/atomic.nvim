local M = {}

function M.apply(hi, c)
	hi("Normal", { fg = c.fg, bg = c.bg })
	hi("NormalFloat", { fg = c.fg, bg = c.bg_surface })
	hi("FloatBorder", { fg = c.fg_muted, bg = c.bg_surface })
	hi("CursorLine", { bg = c.bg_surface })
	hi("CursorColumn", { bg = c.bg_surface })
	hi("ColorColumn", { bg = c.bg_surface })
	hi("Visual", { bg = c.bg_hl })
	hi("VisualNOS", { bg = c.bg_hl })
	hi("Search", { fg = c.bg, bg = c.yellow })
	hi("IncSearch", { fg = c.bg, bg = c.orange })
	hi("CurSearch", { fg = c.bg, bg = c.orange })
	hi("Substitute", { fg = c.bg, bg = c.orange })
	hi("LineNr", { fg = c.fg_muted })
	hi("CursorLineNr", { fg = c.orange, bold = true })
	hi("SignColumn", { fg = c.fg_muted, bg = c.bg })
	hi("FoldColumn", { fg = c.fg_muted, bg = c.bg })
	hi("Folded", { fg = c.fg_dim, bg = c.bg_surface })
	hi("VertSplit", { fg = c.bg_border })
	hi("WinSeparator", { fg = c.bg_border })
	hi("StatusLine", { fg = c.fg_dim, bg = c.bg_surface })
	hi("StatusLineNC", { fg = c.fg_muted, bg = c.bg_surface })
	hi("TabLine", { fg = c.fg_muted, bg = c.bg_surface })
	hi("TabLineFill", { bg = c.bg_surface })
	hi("TabLineSel", { fg = c.fg, bg = c.bg, bold = true })
	hi("WinBar", { fg = c.fg_dim, bg = c.bg })
	hi("WinBarNC", { fg = c.fg_muted, bg = c.bg })
	hi("Pmenu", { fg = c.fg_dim, bg = c.bg_surface })
	hi("PmenuSel", { fg = c.fg, bg = c.bg_hl })
	hi("PmenuSbar", { bg = c.bg_border })
	hi("PmenuThumb", { bg = c.fg_muted })
	hi("WildMenu", { fg = c.bg, bg = c.orange })
	hi("Directory", { fg = c.teal })
	hi("Title", { fg = c.orange, bold = true })
	hi("MatchParen", { fg = c.orange, bold = true, underline = true })
	hi("NonText", { fg = c.bg_border })
	hi("SpecialKey", { fg = c.bg_border })
	hi("Whitespace", { fg = c.bg_border })
	hi("EndOfBuffer", { fg = c.bg })
	hi("Conceal", { fg = c.fg_muted })
	hi("QuickFixLine", { bg = c.bg_hl })
	hi("ModeMsg", { fg = c.fg_dim, bold = true })
	hi("MoreMsg", { fg = c.teal })
	hi("Question", { fg = c.teal })
	hi("ErrorMsg", { fg = c.red })
	hi("WarningMsg", { fg = c.yellow })
	hi("DiffAdd", { bg = c.diff_add })
	hi("DiffChange", { bg = c.diff_change })
	hi("DiffDelete", { fg = c.red, bg = c.diff_delete })
	hi("DiffText", { bg = c.diff_text })
	hi("SpellBad", { sp = c.red, undercurl = true })
	hi("SpellCap", { sp = c.yellow, undercurl = true })
	hi("SpellLocal", { sp = c.teal, undercurl = true })
	hi("SpellRare", { sp = c.purple, undercurl = true })

	-- Terminal ANSI colors (used by lazygit, etc.)
	vim.g.terminal_color_0 = c.bg_border      -- black
	vim.g.terminal_color_1 = c.red           -- red
	vim.g.terminal_color_2 = c.green         -- green
	vim.g.terminal_color_3 = c.yellow        -- yellow
	vim.g.terminal_color_4 = c.blue          -- blue
	vim.g.terminal_color_5 = c.purple        -- magenta
	vim.g.terminal_color_6 = c.teal          -- cyan
	vim.g.terminal_color_7 = c.fg            -- white
	vim.g.terminal_color_8 = c.fg_dim        -- bright black
	vim.g.terminal_color_9 = c.orange        -- bright red
	vim.g.terminal_color_10 = c.green        -- bright green
	vim.g.terminal_color_11 = c.yellow       -- bright yellow
	vim.g.terminal_color_12 = c.blue         -- bright blue
	vim.g.terminal_color_13 = c.pink         -- bright magenta
	vim.g.terminal_color_14 = c.teal         -- bright cyan
	vim.g.terminal_color_15 = c.fg           -- bright white
end

return M
