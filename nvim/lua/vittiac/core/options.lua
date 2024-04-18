vim.cmd("let g:netrw_liststyle = 3")

vim.filetype.add({ extension = { templ = "templ" } })

vim.api.nvim_create_autocmd({ "BufWritePre" }, { pattern = { "*.templ" }, callback = vim.lsp.buf.format })
local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tab & indentation
opt.tabstop = 2 -- 2 spaces for tab
opt.shiftwidth = 2 -- spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indednt from current line when starting new one

opt.wrap = false

-- search settings

opt.ignorecase = true -- ignore case when seraching
opt.smartcase = true -- if you include mixed case in your search , assumes u want case-sensitive

opt.cursorline = true

opt.termguicolors = true -- turn on termguicolor for tokyonight colorscheme
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sighn column so that text doesnt shift

-- backspace
opt.backspace = "indent,eol,start" -- allow bspace on indent , end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true
opt.splitbelow = true
