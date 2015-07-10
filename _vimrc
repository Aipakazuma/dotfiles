:set encoding=utf-8
:set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
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

"Vundle$B$N@_Dj(B
" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()
" " let Vundle manage Vundle
" " required!
" Bundle 'gmarik/vundle'
" " My Bundles here:
" "
" " original repos on github
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" " vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" " non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" " ...
" filetype plugin indent on     " required!
" "
" " Brief help
" " :BundleList          - list configured bundles
" " :BundleInstall(!)    - install(update) bundles
" " :BundleSearch(!) foo - search(or refresh cache first) for foo
" " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle command are not allowed..


"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundle$B$G4IM}$9$k%G%#%l%/%H%j$r;XDj(B
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle$B<+BN$r(Bneobundle$B$G4IM}(B
NeoBundleFetch 'Shougo/neobundle.vim'
" $B%M%*%3%s(Bneocomplcache
NeoBundleFetch 'Shougo/neocomplcache.vim'
" NERDTree$B$r@_Dj(B
NeoBundle 'scrooloose/nerdtree'
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" autoclose$B$r@_Dj(B($B<+F0E*$KJD$83g8L$rF~$l$F$/$l$k$d$D(B)
NeoBundle 'Townk/vim-autoclose'
" endwise$B$r@_Dj(B($B<+F0E*$K(Bend$B$rF~$l$F$/$l$k$d$D(B)
NeoBundle 'tpope/vim-endwise.git'
" Emmet$B$r@_Dj(B
NeoBundle 'mattn/emmet-vim'
let g:user_emmet_leader_key='<C-t>'

" surround$B$r@_Dj!J%7%s%0%k%/%*!<%H$H%@%V%k%/%*!<%H$r@Z$jBX$($?$j$G$-$k!#(Bcs'"
" $B$H$$$&%3%^%s%I$G%7%s%0%k%/%*!<%H$r%@%V%k%/%*!<%H$KCV49$9$k$3$H$,$G$-$^$9!#(B
" $BB>$K$b(Bcs'<p>$B$HBG$A9~$`$H!"%7%s%0%k%/%*!<%HJ8;zNs$r(B<p>$B%?%0$G0O$`$3$H$b$G$-$?$j$7$F!"1~MQE*$J;H$$J}$,$$$m$$$m$G$-$^$9!#(B
NeoBundle 'tpope/vim-surround'
" tcomment.vim$B!J(Bgcc$B$+!"(B<C-->$B$G%3%a%s%H%"%&%H$7$?$j30$7$?$j!K(B
NeoBundle 'tomtom/tcomment_vim'
" Unite
NeoBundle 'Shougo/unite.vim'
" open-browser$B!J(BURL$B$r3+$$$?$j!"%0%0$C$?$j$G$-$k!K(B
NeoBundle 'open-browser.vim'
" $B%V%i%&%6$N<+F0%j%m!<%I(B
NeoBundle 'tell-k/vim-browsereload-mac'
" css3$B$N(Bsyntax
NeoBundle 'hail2u/vim-css3-syntax'
" colorscheme
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'tomasr/molokai'

" $BJd40(B
NeoBundle 'othree/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'

call neobundle#end()


" Required:
filetype plugin indent on

" $BL$%$%s%9%H!<%k$N%W%i%0%$%s$,$"$k>l9g!"%$%s%9%H!<%k$9$k$+$I$&$+$r?R$M$F$/$l$k$h$&$K$9$k@_Dj(B
" $BKh2sJ9$+$l$k$H<YKb$J>l9g$b$"$k$N$G!"$3$N@_Dj$OG$0U$G$9!#(B
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

"-------------------------
" Key Remap
"-------------------------
" nnoremap ;  :
" nnoremap :  ;
" vnoremap ;  :
" vnoremap :  ;
" noremap <C-j> <esc>
" noremap! <C-j> <esc>


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

" Vim$B$r(Bhomebrew$B$G%$%s%9%3$7$?$H$-$K@_Dj(B
set clipboard+=unnamed
