:set encoding=utf-8
:set fileencodings=utf-8
:set fileformats=unix,dos,mac
:set number
:set hls
:set expandtab "$B%?%VF~NO$rJ#?t$N6uGrF~NO$KCV$-49$($k(B
:set tabstop=2 "$B2hLL>e$G%?%VJ8;z$,@j$a$kI}(B
:set shiftwidth=2 "$B<+F0%$%s%G%s%H$G$:$l$kI}(B
:set softtabstop=2 "$BO"B3$7$?6uGr$KBP$7$F%?%V%-!<$d%P%C%/%9%Z!<%9%-!<$G%+!<%=%k$,F0$/I}(B
:set autoindent "$B2~9T;~$KA0$N9T$N%$%s%G%s%H$r7QB3$9$k(B
:set smartindent "$B2~9T;~$KF~NO$5$l$?9T$NKvHx$K9g$o$;$F<!$N9T$N%$%s%G%s%H$rA}8:$9$k(B
:set guifont=Ricty:h16 "$B%U%)%s%H%5%$%:$N@_Dj(B"
:set backspace=indent,eol,start "$B%P%C%/%9%Z!<%9$,8z$+$J$$$3$H$KBP$9$kBP=h(B"


"---------------------------
" Neobundle Settings.
"---------------------------
if has('vim_starting')
  set nocompatible
  " neobundle $B$r%$%s%9%H!<%k$7$F$$$J$$>l9g$O<+F0%$%s%9%H!<%k(B
  if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
    echo "install neobundle..."
    " vim $B$+$i%3%^%s%I8F$S=P$7$F$$$k$@$1(B neobundle.vim $B$N%/%m!<%s(B
    :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
  endif
endif
" bundle$B$G4IM}$9$k%G%#%l%/%H%j$r;XDj(B
set runtimepath+=~/.vim/bundle/neobundle.vim/
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle$B<+BN$r(Bneobundle$B$G4IM}(B
NeoBundleFetch 'Shougo/neobundle.vim'

" NERDTree$B$r@_Dj(B
NeoBundle 'scrooloose/nerdtree'
nnoremap <silent><C-e> :NERDTreeToggle<CR>

NeoBundle 'Townk/vim-autoclose'

NeoBundle 'tpope/vim-endwise.git'

" Emmet$B$r@_Dj(B
" NeoBundle 'mattn/emmet-vim'
" let g:user_emmet_leader_key='<C-t>'

" NeoBundle 'tpope/vim-surround'

" tcomment.vim$B!J(Bgcc$B$+!"(B<C-->$B$G%3%a%s%H%"%&%H$7$?$j30$7$?$j!K(B
NeoBundle 'tomtom/tcomment_vim'

" Unite
NeoBundle 'Shougo/unite.vim'

" open-browser$B!J(BURL$B$r3+$$$?$j!"%0%0$C$?$j$G$-$k!K(B
" NeoBundle 'open-browser.vim'
" $B%V%i%&%6$N<+F0%j%m!<%I(B
" NeoBundle 'tell-k/vim-browsereload-mac'
" css3$B$N(Bsyntax
" NeoBundle 'hail2u/vim-css3-syntax'

NeoBundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234
let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size = 1

" colorscheme
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'tomasr/molokai'

" NeoBundle 'Shougo/neocomplete.vim'
" let g:neocomplete#enable_at_startup = 1
" NeoBundle 'violetyk/neocomplete-php.vim'
" let g:neocomplete_php_locale = 'ja'


call neobundle#end()


" Required:
filetype plugin indent on

" $BL$%$%s%9%H!<%k$N%W%i%0%$%s$,$"$k>l9g!"%$%s%9%H!<%k$9$k$+$I$&$+$r?R$M$F$/$l$k$h$&$K$9$k@_Dj(B
" $BKh2sJ9$+$l$k$H<YKb$J>l9g$b$"$k$N$G!"$3$N@_Dj$OG$0U$G$9!#(B
NeoBundleCheck


"-------------------------
" Key Bindings
"-------------------------
" nnoremap ; :
" noremap <C-c><C-c> :<C-u>nohlsearch<cr><Esc>
nnoremap <ESC><ESC> :nohlsearch<CR>
inoremap <C-j> <Esc>

"-------------------------
" Colorscheme
"-------------------------
syntax on

" let g:hybrid_use_iTerm_colors = 1
" colorscheme hybrid

" set background=dark
" colorscheme solarized
" " $B9THV9f$N?'$r@_Dj(B
" hi LineNr ctermbg=0 ctermfg=0
" hi CursorLineNr ctermbg=4 ctermfg=0
" set cursorline
" hi clear CursorLine

colorscheme molokai
set t_Co=256


"-------------------------
" For OSX only
"-------------------------
" Vim$B$r(Bhomebrew$B$G%$%s%9%3$7$?$H$-$K@_Dj(B
set clipboard+=unnamed

