vim.cmd("hi clear")
vim.g.colors_name = "mono"

local bg = "#000000"
local fg = "#ffffff"
local gray1 = "#333333"
local gray2 = "#555555"
local gray3 = "#888888"
local gray4 = "#aaaaaa"
local gray5 = "#cccccc"

local hi = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hi("Normal", { fg = fg, bg = bg })
hi("NormalFloat", { fg = fg, bg = bg })
hi("NormalNC", { fg = fg, bg = bg })
hi("Cursor", { fg = bg, bg = fg })
hi("CursorLine", { bg = gray1 })
hi("CursorLineNr", { fg = fg, bold = true })
hi("LineNr", { fg = gray2 })
hi("SignColumn", { bg = bg })
hi("ColorColumn", { bg = gray1 })
hi("VertSplit", { fg = gray2, bg = bg })
hi("WinSeparator", { fg = gray2, bg = bg })
hi("StatusLine", { fg = fg, bg = gray1 })
hi("StatusLineNC", { fg = gray3, bg = gray1 })
hi("TabLine", { fg = gray3, bg = gray1 })
hi("TabLineFill", { bg = gray1 })
hi("TabLineSel", { fg = fg, bg = bg, bold = true })
hi("Folded", { fg = gray3, bg = gray1 })
hi("FoldColumn", { fg = gray2, bg = bg })
hi("NonText", { fg = gray2 })
hi("SpecialKey", { fg = gray2 })
hi("EndOfBuffer", { fg = gray1 })

-- Popup / Float
hi("Pmenu", { fg = fg, bg = gray1 })
hi("PmenuSel", { fg = bg, bg = fg })
hi("PmenuSbar", { bg = gray1 })
hi("PmenuThumb", { bg = gray3 })
hi("FloatBorder", { fg = gray3, bg = bg })

-- Search
hi("Search", { fg = bg, bg = fg })
hi("IncSearch", { fg = bg, bg = gray5 })
hi("CurSearch", { fg = bg, bg = fg, bold = true })

-- Visual
hi("Visual", { bg = gray2 })
hi("VisualNOS", { bg = gray2 })

-- Diff
hi("DiffAdd", { fg = fg, bg = gray1 })
hi("DiffChange", { fg = fg, bg = gray1 })
hi("DiffDelete", { fg = gray3, bg = bg })
hi("DiffText", { fg = fg, bg = gray2, bold = true })

-- Messages
hi("ErrorMsg", { fg = fg, bg = bg, bold = true })
hi("WarningMsg", { fg = gray4, bold = true })
hi("ModeMsg", { fg = fg, bold = true })
hi("MoreMsg", { fg = gray4 })
hi("Question", { fg = fg })

-- Diagnostics
hi("DiagnosticError", { fg = fg, bold = true })
hi("DiagnosticWarn", { fg = gray4 })
hi("DiagnosticInfo", { fg = gray3 })
hi("DiagnosticHint", { fg = gray3 })

-- Syntax (all monochrome)
hi("Comment", { fg = gray3, italic = true })
hi("Constant", { fg = fg })
hi("String", { fg = gray4 })
hi("Character", { fg = gray4 })
hi("Number", { fg = fg })
hi("Boolean", { fg = fg })
hi("Float", { fg = fg })
hi("Identifier", { fg = fg })
hi("Function", { fg = fg, bold = true })
hi("Statement", { fg = fg, bold = true })
hi("Conditional", { fg = fg, bold = true })
hi("Repeat", { fg = fg, bold = true })
hi("Label", { fg = fg, bold = true })
hi("Operator", { fg = gray4 })
hi("Keyword", { fg = fg, bold = true })
hi("Exception", { fg = fg, bold = true })
hi("PreProc", { fg = gray5 })
hi("Include", { fg = gray5 })
hi("Define", { fg = gray5 })
hi("Macro", { fg = gray5 })
hi("PreCondit", { fg = gray5 })
hi("Type", { fg = fg })
hi("StorageClass", { fg = fg, bold = true })
hi("Structure", { fg = fg })
hi("Typedef", { fg = fg })
hi("Special", { fg = gray4 })
hi("SpecialChar", { fg = gray4 })
hi("Tag", { fg = fg })
hi("Delimiter", { fg = gray4 })
hi("SpecialComment", { fg = gray3, italic = true })
hi("Debug", { fg = fg })
hi("Underlined", { fg = fg, underline = true })
hi("Error", { fg = fg, bg = gray1, bold = true })
hi("Todo", { fg = bg, bg = fg, bold = true })
hi("Title", { fg = fg, bold = true })
hi("Directory", { fg = fg, bold = true })
hi("MatchParen", { fg = fg, bg = gray2, bold = true })

-- Treesitter
hi("@variable", { fg = fg })
hi("@variable.builtin", { fg = gray4 })
hi("@constant", { fg = fg })
hi("@constant.builtin", { fg = fg })
hi("@function", { fg = fg, bold = true })
hi("@function.builtin", { fg = fg, bold = true })
hi("@keyword", { fg = fg, bold = true })
hi("@string", { fg = gray4 })
hi("@type", { fg = fg })
hi("@type.builtin", { fg = fg })
hi("@property", { fg = fg })
hi("@parameter", { fg = fg })
hi("@punctuation", { fg = gray4 })
hi("@punctuation.bracket", { fg = gray4 })
hi("@punctuation.delimiter", { fg = gray4 })
hi("@comment", { fg = gray3, italic = true })
hi("@tag", { fg = fg, bold = true })
hi("@tag.attribute", { fg = gray4 })
hi("@tag.delimiter", { fg = gray4 })

-- Git signs
hi("GitSignsAdd", { fg = fg })
hi("GitSignsChange", { fg = gray4 })
hi("GitSignsDelete", { fg = gray3 })

-- Telescope
hi("TelescopeNormal", { fg = fg, bg = bg })
hi("TelescopeBorder", { fg = gray2, bg = bg })
hi("TelescopeSelection", { bg = gray1 })
hi("TelescopeMatching", { fg = fg, bold = true })
