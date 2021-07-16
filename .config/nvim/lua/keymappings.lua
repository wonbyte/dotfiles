local utils = require('utils')

-- Clear highlights
utils.map('n', '<C-h>', '<cmd>noh<CR>')

-- jk to escape
utils.map('i', 'jk', '<Esc>')

-- <leader>, shows/hides hidden characters
utils.map('n', '<Space>,', ':set invlist<CR>')

-- I can type Help on my own
utils.map('n', '<F1>', '<Esc>')
utils.map('i', '<F1>', '<Esc>')

-- https://vim.fandom.com/wiki/Simplifying_regular_expressions_using_magic_and_no-magic
utils.map('n', '?', '?\\v')
utils.map('n', '/', '/\\v')
utils.map('c', '%s/', '%sm/')
