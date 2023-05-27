local opt = vim.opt

-- create backup file opt.backup = false line numbers
opt.number = true
opt.relativenumber = false

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true 
opt.autoindent = true
opt.smartindent = true
opt.showtabline = 2

-- swap file
opt.swapfile = false

-- line wrap
opt.wrap = false

-- cursor line
opt.cursorline = true

-- search setting
opt.ignorecase = true
opt.smartcase = true

-- clipboard
opt.clipboard:append("unnamedplus")

-- split window
opt.splitright = true
opt.splitbelow = true

-- remove comment in new line
-- value
-- + 't'    -- auto-wrap text using textwidth
-- + 'c'    -- auto-wrap comments using textwidth
-- + 'r'    -- auto insert comment leader on pressing enter
-- - 'o'    -- don't insert comment leader on pressing o
-- + 'q'    -- format comments with gq
-- - 'a'    -- don't autoformat the paragraphs (use some formatter instead)
-- + 'n'    -- autoformat numbered list
-- - '2'    -- I am a programmer and not a writer
-- + 'j'    -- Join comments smartly
vim.cmd [[autocmd FileType * set formatoptions-=ro]]
vim.cmd [[au BufNewFile,BufRead *.ejs set filetype=html
]]

