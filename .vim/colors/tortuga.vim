" Vim color file
" Maintainer: David Ne\v{c}as (Yeti) <yeti@physics.muni.cz>
" Last Change: 2003-04-23
" URL: http://trific.ath.cx/Ftp/vim/colors/peachpuff.vim

"
" Note: Only GUI colors differ from default, on terminal it's just `light'.

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "tortuga"

hi Normal ctermbg=0 ctermfg=15
hi SpecialKey term=bold ctermfg=4 guifg=Blue
hi NonText term=bold cterm=bold ctermfg=4 gui=bold guifg=Blue
hi Directory term=bold ctermfg=4 guifg=Blue
hi ErrorMsg term=standout cterm=bold ctermfg=7 ctermbg=1 gui=bold guifg=White guibg=Red
hi IncSearch term=reverse ctermfg=2 term=reverse gui=reverse
hi Search term=reverse ctermbg=3 guibg=Gold2
hi MoreMsg term=bold ctermfg=2 gui=bold guifg=SeaGreen
hi ModeMsg term=bold cterm=bold gui=bold
hi LineNr cterm=bold ctermfg=236 guifg=Red3
hi Question term=standout ctermfg=2 gui=bold guifg=SeaGreen
hi StatusLine term=bold,reverse cterm=bold,reverse gui=bold guifg=White guibg=Black
hi StatusLineNC term=reverse cterm=reverse gui=bold guifg=PeachPuff guibg=Gray45
hi VertSplit term=reverse cterm=reverse gui=bold guifg=White guibg=Gray45
hi Visual term=reverse cterm=reverse gui=reverse guifg=Grey80 guibg=fg
hi VisualNOS term=bold,underline cterm=bold,underline gui=bold,underline
hi WarningMsg term=standout ctermfg=1 gui=bold guifg=Red
hi WildMenu term=standout ctermfg=0 ctermbg=3 guifg=Black guibg=Yellow
hi Folded term=standout ctermfg=2 ctermbg=7 guifg=Black guibg=#e3c1a5
hi FoldColumn term=standout ctermfg=4 ctermbg=7 guifg=DarkBlue guibg=Gray80
hi DiffAdd term=bold ctermbg=4 guibg=White
hi DiffChange term=bold ctermbg=5 guibg=#edb5cd
hi DiffDelete term=bold cterm=bold ctermfg=7 ctermbg=6 gui=bold guifg=LightBlue guibg=#f6e8d0
hi DiffText term=reverse cterm=bold ctermbg=1 gui=bold guibg=#ff8060
" hi Cursor cterm=none ctermbg=2
" hi lCursor ctermbg=15

" Colors for syntax highlighting
hi Comment ctermfg=112 guifg=#406090
hi Statement cterm=bold ctermfg=25 gui=bold guifg=Black
hi Constant ctermfg=245 gui=bold guifg=SeaGreen
hi Type cterm=bold ctermfg=4 gui=bold guifg=SeaGreen
hi Error term=reverse cterm=bold ctermfg=7 ctermbg=1 gui=bold guifg=White guibg=Red
hi Function cterm=bold ctermfg=245 gui=bold guifg=SeaGreen
hi MatchParen cterm=none ctermbg=14 ctermfg=15

hi link String	     Constant
hi link Character    Constant
hi link Number	     Constant
hi link Boolean	     Constant
hi link Float		 Number
hi link Keyword	     Normal
hi link Operator	 Type
hi link StorageClass Type
hi link Structure	 Type
hi link Typedef	     Type
hi link SpecialChar	 Special
hi link Delimiter	 Normal

" Unmodified colors
hi Identifier term=underline ctermfg=6 guifg=DarkCyan
hi Ignore cterm=bold ctermfg=7 guifg=bg
hi Todo term=standout ctermfg=0 ctermbg=3 guifg=Blue guibg=Yellow

