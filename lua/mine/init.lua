local M = {}

local colors = {
	highlight = "#FAFF00",
	background = "#2D2A2E",
	text = "#FCFCFA",
	comment = "#CCCCAC",
	pMenuBg = "#1E1E1E",
	pMenuSelBg = "#131313",
	error = "#FF1029",
	todo = "#FFAA00",
	indentBlankLine = "#5F5F5F",
	none = "NONE",
}

function M.setup() end

function M.set_highlights()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "mine"

	local highlight_groups = {
		Constant = { bg = colors.background, fg = colors.highlight },
		Normal = { bg = colors.background, fg = colors.text },
		Function = { bg = colors.background, fg = colors.text },
		Keyword = { bg = colors.background, fg = colors.text },
		Identifier = { bg = colors.background, fg = colors.text },
		Statement = { bg = colors.background, fg = colors.text },
		Type = { bg = colors.background, fg = colors.text },
		Special = { bg = colors.background, fg = colors.text },
		String = { bg = colors.background, fg = colors.highlight },
		EndOfBuffer = { bg = colors.background, fg = colors.text },
		SpecialKey = { bg = colors.background, fg = colors.text },
		NonText = { bg = colors.background, fg = colors.text },
		Ignore = { bg = colors.background, fg = colors.text },
		Comment = { bg = colors.background, fg = colors.comment },
		Pmenu = { bg = colors.pMenuBg, fg = colors.text },
		PmenuSel = { bg = colors.pMenuSelBg, fg = colors.highlight },
		Cursor = { bg = colors.text, fg = colors.background },
		Visual = { bg = colors.text, fg = colors.background },
		Error = { bg = colors.background, fg = colors.error },
		Todo = { bg = colors.background, fg = colors.todo },
		fzf1 = { bg = colors.background, fg = colors.text },
		fzf2 = { bg = colors.text, fg = colors.todo },
		fzf3 = { bg = colors.background, fg = colors.text },
		Folded = { bg = colors.background, fg = colors.text },
		FoldColumn = { bg = colors.background, fg = colors.text },
		IndentBlanklineIndent = { bg = colors.background, fg = colors.indentBlankLine },
		MatchParen = { bg = colors.background, fg = colors.highlight },
	}

	for group, color in pairs(highlight_groups) do
		vim.api.nvim_set_hl(0, group, color)
	end
end

return M
