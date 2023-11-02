local M = {}

local colors = {
    highlight = '#FAFF00',
    background = '#2D2A2E',
    text = '#FCFCFA',
    comment = '#CCCCAC',
    none = 'NONE',
}

M.setup = function()

end

M.set_highlights = function()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "mine"


    vim.api.nvim_set_hl(0, "Constant",              { bg = colors.background, fg = colors.highlight })
    vim.api.nvim_set_hl(0, "Normal",                { bg = colors.background, fg = colors.text })
    vim.api.nvim_set_hl(0, "Identifier",            { bg = colors.background, fg = colors.text })
    vim.api.nvim_set_hl(0, "Statement",             { bg = colors.background, fg = colors.text })
    vim.api.nvim_set_hl(0, "Type",                  { bg = colors.background, fg = colors.text })
    vim.api.nvim_set_hl(0, "Special",               { bg = colors.background, fg = colors.text })
    vim.api.nvim_set_hl(0, "EndOfBuffer",           { bg = colors.background, fg = colors.text })
    vim.api.nvim_set_hl(0, "SpecialKey",            { bg = colors.background, fg = colors.text })
    vim.api.nvim_set_hl(0, "NonText",               { bg = colors.background, fg = colors.text })
    vim.api.nvim_set_hl(0, "Ignore",                { bg = colors.background, fg = colors.text })
    vim.api.nvim_set_hl(0, "Comment",               { bg = colors.background, fg = colors.comment })
    vim.api.nvim_set_hl(0, "Pmenu",                 { bg = "#1E1E1E",         fg = colors.text })
    vim.api.nvim_set_hl(0, "PmenuSel",              { bg = "#131313",         fg = colors.highlight })
    vim.api.nvim_set_hl(0, "Cursor",                { bg = colors.text,       fg = colors.background })
    vim.api.nvim_set_hl(0, "Visual",                { bg = colors.text,       fg = colors.background })
    vim.api.nvim_set_hl(0, "Error",                 { bg = colors.background, fg = "#FF1029" })
    vim.api.nvim_set_hl(0, "Todo",                  { bg = colors.background, fg = "#FFAA00" })
    vim.api.nvim_set_hl(0, "fzf1",                  { bg = colors.background, fg = colors.text })
    vim.api.nvim_set_hl(0, "fzf2",                  { bg = colors.text, fg = "#FFAA00" })
    vim.api.nvim_set_hl(0, "fzf3",                  { bg = colors.background, fg = colors.text })
    vim.api.nvim_set_hl(0, "Folded",                { bg = colors.background, fg = colors.text })
    vim.api.nvim_set_hl(0, "FoldColumn",            { bg = colors.background, fg = colors.text })
    vim.api.nvim_set_hl(0, "IndentBlanklineIndent", { bg = colors.background, fg = '#5F5F5F' })
    vim.api.nvim_set_hl(0, "MatchParen",            { bg = colors.background, fg = colors.highlight })
end



return M
