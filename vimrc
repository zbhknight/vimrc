set shiftwidth=4
set tabstop=4
set expandtab
filetype on
filetype indent on
filetype plugin on
set fileencoding=utf-8
set tags=~/tmp/nginx-0.7.67/src/nginx-tags
set showmatch
set incsearch
set foldmethod=marker
map <F12> i#!/usr/bin/python<ESC>o
map <F8> :NERDTreeToggle<cr>
map <F7> :TlistToggle<cr>

"""""""""""""""""""""""""""'
""    ¡Á??¡¥21??¨¤¡§o?       "
"""""""""""""""""""""""""""""
":inoremap ( ()<ESC>i
":inoremap { {}<ESC>i
":inoremap [ []<ESC>i

""""""""""""""""""""""""""""""""
""    taglist       "
""""""""""""""""""""""""""""""""
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_WinWidth = 40

"""""""""""""""""""""""""""""""""
""" NERDTree  "
""""""""""""""""""""""""""""""
let NERDTreeWinPos = "right"

""""""""""""""""""""""""""""""""
"""    py_diction     "
"let g:pydiction_location = '/home/knight/.vim/pydiction-1.2/complete-dict'

set cursorline
highlight CursorLine cterm=bold
"highlight CursorLine ctermbg=lightblue ctermfg=None
highlight CursorLine ctermbg=lightblue ctermfg=white

let g:indentLine_color_term = 239

" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'
    "Add your bundles here
    "uber awesome syntax and errors highlighter
    Bundle 'Syntastic'
    Bundle 'taglist.vim'
    "T-H-E colorscheme
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'Yggdroot/indentLine'
    "So awesome, it should be illegal 
    Bundle 'https://github.com/tpope/vim-fugitive' 
    Bundle 'https://github.com/ervandew/supertab'
    "...All your other bundles...
    if iCanHazVundle == 0
        echo "Installing Bundles, please ignore key map error messages"
        echo ""
        :BundleInstall
    endif
" Setting up Vundle - the vim plugin bundler end

