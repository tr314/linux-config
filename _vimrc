" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add plugins here.
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'sirver/ultisnips'

call vundle#end()            " required
filetype plugin indent on    " required


" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

" Tab settings
set expandtab
set tabstop=4
set shiftwidth=4
set foldmethod=indent
set foldenable

" Show line numbers
set number

" Highlight cursorline
set cursorline
hi clear cursorline

" Show ruler
set colorcolumn=79
hi colorcolumn ctermbg=darkgrey

" Fix lightline not working right away.
set laststatus=2

" Set color scheme options
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" Show spaces as dots.
set list
set listchars=space:.

" Toggle char visibility.
nmap <F2> :set invlist<CR>
imap <F2> <ESC>:set invlist<CR>
