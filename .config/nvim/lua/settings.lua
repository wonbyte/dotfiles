vim.cmd 'syntax enable'
vim.cmd 'filetype plugin indent on'

-- Show relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Show cursor at line
vim.wo.cursorline = true

-- Handle spaces and indents
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4

-- Keep some room around cursor
vim.o.scrolloff = 4
vim.wo.scrolloff = 4

-- Make cmd line little taller
vim.o.cmdheight = 2

-- Don't need backups when git
vim.bo.swapfile = false
vim.o.backup = false
vim.o.writebackup = false

-- Incremental live completion
vim.o.inccommand = 'nosplit'

-- Make line numbers default
vim.wo.number = true

-- Do not save when switching buffers
vim.o.hidden = true

-- Enable break indent
vim.o.breakindent = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Enable system clipboard
vim.o.clipboard = 'unnamedplus'

-- Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', {noremap = true, silent = true})
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Remap for dealing with word wrap
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'",
                        {noremap = true, expr = true, silent = true})
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'",
                        {noremap = true, expr = true, silent = true})

-- Map blankline
vim.g.indent_blankline_char = '┊'
vim.g.indent_blankline_filetype_exclude = {'help', 'packer'}
vim.g.indent_blankline_buftype_exclude = {'terminal', 'nofile'}
vim.g.indent_blankline_char_highlight = 'LineNr'
vim.g.indent_blankline_show_trailing_blankline_indent = false

vim.cmd [[
set expandtab smarttab shiftround autoindent smartindent smartcase
set path+=**
set wildmenu
set wildmode=longest,list,full
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*
]]

-- Highlight on yank
vim.api.nvim_exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]], false)

-- Y yank until the end of line
vim.api.nvim_set_keymap('n', 'Y', 'y$', {noremap = true})

-- set list characters
vim.cmd 'set listchars=nbsp:¬,eol:¶,extends:»,precedes:«,trail:•'

-- remove extra whitespace
vim.api.nvim_exec([[
    fun! TrimWhitespace()
        let l:save = winsaveview()
        keeppatterns %s/\s\+$//e
        call winrestview(l:save)
    endfun
    autocmd FileType rust,html,typescript,javascript,python autocmd BufWritePre <buffer> call TrimWhitespace()
]], false)

-- Toggle to disable mouse mode and indentlines for easier paste
ToggleMouse = function()
    if vim.o.mouse == 'a' then
        vim.wo.signcolumn = 'no'
        vim.o.mouse = 'v'
        vim.wo.number = false
        print("Mouse disabled")
    else
        vim.wo.signcolumn = 'yes'
        vim.o.mouse = 'a'
        vim.wo.number = true
        print("Mouse enabled")
    end
end

vim.api.nvim_set_keymap('n', '<F10>', '<cmd>lua ToggleMouse()<cr>',
                        {noremap = true})
