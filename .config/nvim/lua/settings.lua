local utils = require('utils')

local cmd = vim.cmd
local o = vim.o
local wo = vim.wo
local bo = vim.bo
local indent = 4

cmd 'syntax enable'
cmd 'filetype plugin indent on'

bo.shiftwidth = indent
bo.tabstop = indent
bo.softtabstop = indent
bo.swapfile = false
o.backup = false
o.clipboard = 'unnamedplus'
o.cmdheight = 2
o.hidden = true
o.ignorecase = true
o.inccommand = "split"
o.incsearch = true
o.scrolloff = 4
o.showmode = false -- lightline alreadys shows it
o.shortmess = 'c' -- coc vim recommended
o.smartcase = true
o.splitbelow = true
o.splitright = true
o.termguicolors = true
o.timeoutlen = 300
o.updatetime = 300
o.writebackup = false
wo.number = true
wo.relativenumber = true
wo.scrolloff = 4
wo.signcolumn = 'number'
wo.cursorline = true

cmd [[
set expandtab smarttab shiftround autoindent smartindent smartcase
set path+=**
set wildmenu
set wildmode=longest,list,full
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*
]]

-- highlight on yank
cmd 'au TextYankPost * silent! lua vim.highlight.on_yank()'

-- set list characters
cmd 'set listchars=nbsp:¬,eol:¶,extends:»,precedes:«,trail:•'

-- remove extra whitespace
vim.api.nvim_exec([[
    fun! TrimWhitespace()
        let l:save = winsaveview()
        keeppatterns %s/\s\+$//e
        call winrestview(l:save)
    endfun
    autocmd FileType rust,html,typescript,javascript,python autocmd BufWritePre <buffer> call TrimWhitespace()
]], false)
