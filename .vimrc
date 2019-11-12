" Plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'iCyMind/NeoSolarized'
Plug 'neomake/neomake'
call plug#end()
let g:neomake_python_enabled_makers = ['pylint']
" When writing a buffer (no delay).
" call neomake#configure#automake('w')
let g:neomake_error_sign = { 'texthl': 'NeoMakeErrorSign' }
let g:neomake_warning_sign = { 'texthl': 'NeoMakeWarningSign' }
let g:neomake_informational_sign = { 'texthl': 'NeomakeNeomakeInfoSign' }
let g:neomake_message_sign = { 'texthl': 'NeomakeMessageSign' }

" highlight common PEP errors
" highlight WhitespacePEP gui=underline cterm=underline ctermfg=red guifg=red ctermbg=red guibg=red
" match WhitespacePEP /\S\(=\|<\|>\|\!\|+\{-}\)=\S/
" match WhitespacePEP /\S=\S/
command Fixspaces execute "%s/\\((.*\\)\\@<!\\(\\S\\)\\(=\\|<\\|>\\|\!\\|+\\{-}\\)\\(=\\|<\\|>\\)\\(\\S\\)\\(.*)\\)\\@!/\\2 \\3\\4 \\5/gc"
command FixEOLspaces execute "%s/\\s\\+$//g | nohl"
command Fixcommas execute "%s/\\(,\\|:\\)\\(\\S\\)/\\1 \\2/gc"
command Fixstrings /\(\('\|"\)\(\s\{-}\)+\|+\(\s\{-}\)\('\|"\)\)
"

filetype plugin on
set shellslash
set grepprg=grep\ -nH\ $*
" filetype indent on

" " jump at same line as when closed
" if has("autocmd")
"   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" endif

set mouse=a
set number
noremap <M-LeftMouse> <4-LeftMouse>
inoremap <M-LeftMouse> <4-LeftMouse>
onoremap <M-LeftMouse> <C-C><4-LeftMouse>
noremap <M-LeftDrag> <LeftDrag>
inoremap <M-LeftDrag> <LeftDrag>
onoremap <M-LeftDrag> <C-C><LeftDrag>

au BufNewFile,BufRead *.vue set filetype=javascript
au BufNewFile,BufRead *.cu set filetype=cuda
au BufNewFile,BufRead *.cuh set filetype=cuda
au BufNewFile,BufRead *.t4 set filetype=fortran
au BufNewFile,BufRead *.i set filetype=cpp

nmap <silent> <C-N> :cn<CR>zv
nmap <silent> <C-P> :cp<CR>zv

set expandtab
set tabstop=8
set shiftwidth=4
set ls=2
set hlsearch

" python stuff
autocmd FileType python set omnifunc=pythoncomplete#Complete
inoremap # X<C-H>#
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set tags+=$HOME/.local/lib/python3.6/site-packages/tags "ctags -R -f ~/.vim/tags/python27.ctags /usr/lib/python2.7/

" help fat finger asshat trying to save and quit by typing :w< or :w:
autocmd BufWritePre [<] :wq
autocmd BufWritePre [:] :wq

map ' ' <Space>
map Y y$
" nnoremap <C-H> :tabprevious<CR>
nnoremap <C-L> :tabnext<CR> 
nnorema  <C-S-H> :tabm -1<CR>
nnorema  <C-S-L> :tabm +1<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR> 
nnorema  <C-S-Left> :tabm -1<CR>
nnorema  <C-S-Right> :tabm +1<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>
command -nargs=+ Ggr execute 'silent Ggrep!' <q-args> | cw | redraw!

" " LATEX
" put \begin{} \end{} tags tags around the current word
map  <C-B>      YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA
map! <C-B> <ESC>YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA
au BufNewFile,BufRead *.tex set tw=113
au BufNewFile,BufRead *.tex set spell spelllang=en_gb
au BufNewFile,BufRead *.tex hi def link DoubleSpace PreProc
au BufNewFile,BufRead *.tex match DoubleSpace "[^ ]  [^ ]"

au BufNewFile,BufRead *.md set tw=113
au BufNewFile,BufRead *.md set spell spelllang=en_gb
let g:languagetool_jar='/etc/languagetool/languagetool-standalone/target/LanguageTool-4.0-SNAPSHOT/LanguageTool-4.0-SNAPSHOT/languagetool-commandline.jar'
au BufNewFile,BufRead *.md hi def link DoubleSpace PreProc
au BufNewFile,BufRead *.md match DoubleSpace "[^ ]  [^ ]"
"set t_Co=256
"colorscheme tortugawhite
syntax enable
set background=dark
"let g:solarized_termcolors=256
colorscheme NeoSolarized
" source ~/.vimrc_py
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set colorcolumn=80
hi SpellBad cterm=reverse ctermfg=Red
hi SpellCap cterm=reverse ctermfg=Blue

" Highlight end of line whitespace
highlight WhitespaceEOL ctermbg=red guibg=red gui=underline
au BufNewFile,InsertLeave * match WhitespaceEOL /\s\+$\|\t\|\($\n\s*\)\+\%$/
" au InsertLeave * match WhitespaceEOL /\s\+$/
" au InsertLeave * match WhitespaceEOL /\t/


" " vim airline
let g:bufferline_echo = 0
set noshowmode
" let g:airline_solarized_bg='dark'
" let g:airline_powerline_fonts = 1
 if !exists('g:airline_symbols')
   let g:airline_symbols = {}
   " let g:airline_symbols.branch = '⎇'
   let g:airline_symbols.branch = ''
   let g:airline_symbols.readonly = ''
 endif
" let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', '/', 'lines', ':%3v'])
let g:airline_left_sep = ' '
let g:airline_right_sep = ' '
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" let g:airline#extensions#tabline#exclude_buffers = []
" let g:airline#extensions#tabline#show_tab_type = 0
" let g:airline#extensions#tabline#show_tab_nr = 0
" let g:airline#ignore_bufadd_pat = 1
" let g:airline#extensions#tabline#show_splits = 0

" WILDMENU CUSTOMIZATION
set wildmenu
" set wildmode=list:longest,full

" COMMENTS
autocmd FileType c,cpp,java,scala,rust let b:open_comment = '//'
autocmd FileType python,dockerfile   let b:open_comment = '#'
autocmd FileType sh,conf,fstab let b:open_comment = '#'
autocmd FileType tex let b:open_comment = '%'
autocmd FileType mail let b:open_comment = '>'
autocmd FileType vim let b:open_comment = '"'
if !empty('b:open_comment')
    nmap <expr> <C-Space> "v".ToggleComment(b:open_comment)
    vmap <expr> <C-Space> ToggleComment(b:open_comment)
endif
autocmd FileType htmldjango,html  nmap <expr> <C-Space> "v".ToggleComment('{#','#}')
autocmd FileType htmldjango,html  vmap <expr> <C-Space> ToggleComment('{#','#}')
autocmd FileType xsl  nmap <expr> <C-Space> "v".ToggleComment('<!--','-->')
autocmd FileType xsl  vmap <expr> <C-Space> ToggleComment('<!--','-->')

function! ToggleComment(open_symbol,...)
    let a:close_symbol = get(a:,1,0)
    if getline('v') =~ "^\\s*".a:open_symbol
        " uncomment the line
        let a:open_cmd = ":\<C-U>silent! '<,'>s,^\\(\\s*\\)".a:open_symbol." ,\\1,\<CR>"
        if !empty(a:close_symbol)
            let a:close_cmd = ":\<C-U>silent! '<,'>s,\\(\\s*\\)".a:close_symbol.",,\<CR>"
        else
            let a:close_cmd = ""
        end
    else
        " Comment the line(s)
        let a:open_cmd  = "\<ESC>`>\<C-V>`<^I".a:open_symbol." \<ESC>"
        if !empty(a:close_symbol)
            let a:close_cmd = ":\<C-U>silent! '<,'>s,$, ".a:close_symbol.",\<CR>"
        else
            let a:close_cmd = ""
        end
    end
    return a:open_cmd.a:close_cmd.":silent nohl\<CR>"
endfunction

