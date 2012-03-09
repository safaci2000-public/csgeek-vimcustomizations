"JSON Fix.
map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>
"XML fix
map <leader>xml  <Esc>:%!xmllint --format %<CR>

" Mappings
map <C-Tab> :tabnext<CR>
map <C-T> :tabnew<CR>
map <S-Right> :tabnext<CR>
map <S-Left> :tabprev<CR>
nmap <Space> :tabnext<CR>
nmap nogui  :call NoGUI()<CR>
nmap gui    :call ResetGUI()<CR>

function! NoGUI()
    set guioptions-=T
    set guioptions-=m  "hides menu bar
    "let do_syntax_sel_menu = 1|runtime! synmenu.vim|aunmenu &Syntax.&Show\ filetypes\ in\ menu
endfunction

function! ResetGUI()
    set guioptions+=T
    set guioptions+=m  "hides menu bar
    "let do_syntax_sel_menu = 1|runtime! synmenu.vim|aunmenu &Syntax.&Show\ filetypes\ in\ menu
endfunction


autocmd BufNewFile * :call LoadFileTemplate()

function! LoadFileTemplate()
  silent! 0r ~/.vim/template/%:e.tmpl
  "syn match vimTemplateMarker "&lt;+.\++&gt;" containedin=ALL
  "hi vimTemplateMarker guifg=#67a42c guibg=#112300 gui=bold
endfunction


