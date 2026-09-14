-- Birmingham
-- ~/.config/nvim/colors/birmingham.lua
--
-- A dark theme built around .sway/birmingham-art-wallpaper.jpg, a
-- watercolor river landscape. Sky, water and foliage give a full
-- spread of hues (blue, teal, green, lime, gold, orange, rust) so
-- syntax stays easy to tell apart at a glance, on a cool near-black
-- background instead of the muddy browns of the previous theme.

vim.cmd.highlight("clear")

if vim.fn.exists("syntax_on") == 1 then
	vim.cmd.syntax("reset")
end

vim.o.background = "dark"
vim.g.colors_name = "birmingham"

local c = {
	bg = "#14171A",
	inactive_bg = "#0F1214",
	fg = "#E8E6DC",
	snow = "#F7F5EC",

	comment = "#93A79A",
	blue_gray = "#6C93A8",
	blue = "#5FA8D8",
	teal = "#4FB2B0",
	green = "#6FBF55",
	lime = "#B9CC5E",
	gold = "#F2B94E",
	orange = "#E8873D",
	red = "#EB5B36",

	selection = "#1F3B3A",
	inactive_sel = "#1B211F",
	line = "#1B1F1F",
	status_green = "#2E5C36",
	border = "#4FB2B0",
}
local function hi(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Editor UI
hi("Normal", { fg = c.fg, bg = c.bg })
hi("NormalFloat", { fg = c.fg, bg = c.inactive_bg })
hi("NormalNC", { fg = c.fg, bg = c.bg })
hi("SignColumn", { fg = c.fg, bg = c.bg })
hi("EndOfBuffer", { fg = c.bg, bg = c.bg })
hi("Cursor", { fg = c.bg, bg = c.gold })
hi("CursorLine", { bg = c.line })
hi("CursorColumn", { bg = c.line })
hi("ColorColumn", { bg = c.line })
hi("Visual", { bg = c.selection })
hi("VisualNOS", { bg = c.selection })
hi("Search", { fg = c.bg, bg = c.gold })
hi("IncSearch", { fg = c.bg, bg = c.orange })
hi("CurSearch", { fg = c.bg, bg = c.orange })
hi("Substitute", { fg = c.bg, bg = c.orange })

-- Line numbers and folds
hi("LineNr", { fg = c.comment, bg = c.bg })
hi("CursorLineNr", { fg = c.gold, bg = c.line, bold = true })
hi("FoldColumn", { fg = c.teal, bg = c.bg })
hi("Folded", { fg = c.teal, bg = c.inactive_bg })

-- Window separators and borders
hi("WinSeparator", { fg = c.blue_gray, bg = c.bg })
hi("VertSplit", { fg = c.blue_gray, bg = c.bg })
hi("FloatBorder", { fg = c.teal, bg = c.inactive_bg })
hi("FloatTitle", { fg = c.gold, bg = c.inactive_bg, bold = true })

-- Statusline and tabline
hi("StatusLine", { fg = c.fg, bg = c.status_green })
hi("StatusLineNC", { fg = c.comment, bg = c.inactive_bg })
hi("TabLine", { fg = c.comment, bg = c.inactive_bg })
hi("TabLineFill", { fg = c.comment, bg = c.inactive_bg })
hi("TabLineSel", { fg = c.fg, bg = c.bg, bold = true })

-- Menus and prompts
hi("Pmenu", { fg = c.fg, bg = c.inactive_bg })
hi("PmenuSel", { fg = c.bg, bg = c.gold })
hi("PmenuSbar", { bg = c.blue_gray })
hi("PmenuThumb", { bg = c.gold })
hi("WildMenu", { fg = c.bg, bg = c.gold })
hi("Question", { fg = c.gold })
hi("Title", { fg = c.gold, bold = true })
hi("Directory", { fg = c.blue })

-- Diagnostics
hi("DiagnosticError", { fg = c.red })
hi("DiagnosticWarn", { fg = c.orange })
hi("DiagnosticInfo", { fg = c.blue })
hi("DiagnosticHint", { fg = c.teal })

hi("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.orange })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.blue })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.teal })

-- Diff
hi("DiffAdd", { fg = c.green, bg = "#1B2E1B" })
hi("DiffChange", { fg = c.gold, bg = "#332B18" })
hi("DiffDelete", { fg = c.red, bg = "#331C16" })
hi("DiffText", { fg = c.fg, bg = c.blue_gray })

-- Core syntax
hi("Comment", {
	fg = c.comment,
	italic = true,
})

hi("Constant", {
	fg = c.red,
})

hi("String", {
	fg = c.green,
})

hi("Character", {
	fg = c.green,
})

hi("Number", {
	fg = c.gold,
})

hi("Boolean", {
	fg = c.red,
	bold = true,
})

hi("Float", {
	fg = c.gold,
})

hi("Identifier", {
	fg = c.fg,
})

hi("Variable", {
	fg = c.fg,
})

hi("Function", {
	fg = c.lime,
	bold = true,
})

hi("Statement", {
	fg = c.blue,
	bold = true,
})

hi("Conditional", {
	fg = c.blue,
	bold = true,
})

hi("Repeat", {
	fg = c.blue,
	bold = true,
})

hi("Label", {
	fg = c.blue,
})

hi("Operator", {
	fg = c.blue_gray,
})

hi("Keyword", {
	fg = c.blue,
	bold = true,
})

hi("Exception", {
	fg = c.red,
	bold = true,
})

hi("PreProc", {
	fg = c.orange,
})

hi("Include", {
	fg = c.orange,
})

hi("Define", {
	fg = c.orange,
	bold = true,
})

hi("Macro", {
	fg = c.orange,
})

hi("Type", {
	fg = c.teal,
	bold = true,
})

hi("StorageClass", {
	fg = c.blue_gray,
})

hi("Structure", {
	fg = c.teal,
})

hi("Typedef", {
	fg = c.teal,
})

hi("Special", {
	fg = c.gold,
})

hi("Delimiter", {
	fg = c.blue_gray,
})

hi("SpecialComment", {
	fg = c.green,
	italic = true,
})

hi("Error", {
	fg = c.snow,
	bg = c.red,
	bold = true,
})

hi("Todo", {
	fg = c.bg,
	bg = c.gold,
	bold = true,
})

-- Tree-sitter captures
hi("@comment",               { link = "Comment" })
hi("@string",                { link = "String" })
hi("@string.escape",         { fg = c.gold })
hi("@character",             { link = "Character" })

hi("@number",                { link = "Number" })
hi("@float",                 { link = "Float" })
hi("@boolean",               { link = "Boolean" })
hi("@constant",              { link = "Constant" })
hi("@constant.builtin",      { fg = c.red })

hi("@variable",              { fg = c.fg })
hi("@variable.builtin",      { fg = c.blue_gray })
hi("@variable.parameter",    { fg = c.comment })

hi("@function",              { fg = c.lime, bold = true })
hi("@function.call",         { fg = c.lime })
hi("@function.builtin",      { fg = c.gold })
hi("@method",                { fg = c.lime, bold = true })
hi("@method.call",           { fg = c.lime })

hi("@keyword",               { fg = c.blue, bold = true })
hi("@keyword.function",      { fg = c.blue, bold = true })
hi("@keyword.return",        { fg = c.red, bold = true })
hi("@keyword.operator",      { fg = c.blue_gray })

hi("@type",                  { fg = c.teal, bold = true })
hi("@type.builtin",          { fg = c.teal })
hi("@attribute",             { fg = c.orange })
hi("@property",              { fg = c.comment })

hi("@operator",              { fg = c.blue_gray })
hi("@punctuation.delimiter", { fg = c.blue_gray })
hi("@punctuation.bracket",   { fg = c.blue_gray })

hi("@tag",                   { fg = c.red })
hi("@tag.attribute",         { fg = c.orange })
hi("@markup.link",           { fg = c.blue, underline = true })
