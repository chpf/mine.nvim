local M = {}

local colors = {
	highlight = "#FAFF00",
	background = "#2D2A2E",
	text = "#FCFCFA",
	comment = "#CCCCAC",
	none = "NONE",
}

function M.setup()
	M.set_highlights()
end

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
		Identifier = { bg = colors.background, fg = colors.text },
		Statement = { bg = colors.background, fg = colors.text },
		Type = { bg = colors.background, fg = colors.text },
		Special = { bg = colors.background, fg = colors.text },
		EndOfBuffer = { bg = colors.background, fg = colors.text },
		SpecialKey = { bg = colors.background, fg = colors.text },
		NonText = { bg = colors.background, fg = colors.text },
		Ignore = { bg = colors.background, fg = colors.text },
		Comment = { bg = colors.background, fg = colors.comment },
		Pmenu = { bg = "#1E1E1E", fg = colors.text },
		PmenuSel = { bg = "#131313", fg = colors.highlight },
		Cursor = { bg = colors.text, fg = colors.background },
		Visual = { bg = colors.text, fg = colors.background },
		Error = { bg = colors.background, fg = "#FF1029" },
		Todo = { bg = colors.background, fg = "#FFAA00" },
		fzf1 = { bg = colors.background, fg = colors.text },
		fzf2 = { bg = colors.text, fg = "#FFAA00" },
		fzf3 = { bg = colors.background, fg = colors.text },
		Folded = { bg = colors.background, fg = colors.text },
		FoldColumn = { bg = colors.background, fg = colors.text },
		IndentBlanklineIndent = { bg = colors.background, fg = "#5F5F5F" },
		MatchParen = { bg = colors.background, fg = colors.highlight },
	}

	for group, color in pairs(highlight_groups) do
		vim.api.nvim_set_hl(0, group, color)
	end
end

return M
