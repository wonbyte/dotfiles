" lsp provider to find the cursor word definition and reference
nnoremap <silent><leader>gh :Lspsaga lsp_finder<CR>

" code action
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

" show hover doc
nnoremap <silent>K :Lspsaga hover_doc<CR>

"scroll down hover doc or scroll in definition preview
nnoremap <silent><C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>

"scroll up hover doc
nnoremap <silent><C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

" show signature help
nnoremap <silent>gs :Lspsaga signature_help<CR>

" rename
nnoremap <silent>gr :Lspsaga rename<CR>

"preview definition
nnoremap <silent>gd :Lspsaga preview_definition<CR>

" show diagnostics
nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>

" jump diagnostics
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>

" float terminal also you can pass the cli command in open_float_terminal function
nnoremap <silent> <leader>cot :Lspsaga open_floaterm<CR>
tnoremap <silent> <leader>cct <C-\><C-n>:Lspsaga close_floaterm<CR>
