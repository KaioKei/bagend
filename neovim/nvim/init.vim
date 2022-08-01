
"
" PLUGINS
"
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
" file explorer
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
" file structure viewer
Plug 'majutsushi/tagbar'
" navigate through vim/tmux panels
Plug 'christoomey/vim-tmux-navigator'
" make nerdtree and tagbar working together
Plug 'pseewald/nerdtree-tagbar-combined'
" markdown support for tagbar
Plug 'lvht/tagbar-markdown'
" color theme 
Plug 'AlessandroYorba/Alduin' 
" comments key mapping
Plug 'scrooloose/nerdcommenter'
" markdown preview
Plug 'iamcco/markdown-preview.vim'
" markdown table of content generator
Plug 'mzlogin/vim-markdown-toc'
" Autocompletion engine for neovim/vim8
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Python autocompletion
Plug 'zchee/deoplete-jedi'
"Plug 'davidhalter/jedi-vim'
call plug#end()

"NERDTree conf
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" TagBar plugin
let g:tagbar_left = 1
let g:tagbar_vertical = 20
let NERDTreeWinPos = 'left'
"iamco markdown preview 
let g:mkdp_auto_close = 0
" enable nerdtree and tagbar at startup
"autocmd VimEnter * NERDTree | Tagbar
" enable deoplete at startup
let g:deoplete#enable_at_startup = 1


"
" MAPPING
"
" Free key bindings :
" All Alt key combinations and: <C-B>, <C-I>, <C-J>, <C-K>, <C-N>, <C-O>, <C-P>, <C-Q>, <C-S>, <C-H>, <C-J>, <C-K>, <C-N>, <C-P>, <C-H>,  <C-R>, <C-T>, <C-X>, <C-Z>, <C-@>, <C-[>, <C-_>, <C-^>, <C-_>, +, K, S, Y, _, s, x, <Del>, &, +, ., P, Q, R, Z, _, s, x, <Del>
" help:
" <S-...>  shift-key
" <C-...>  control-key
" <M-...>  alt-key or meta-key
" <A-...>  same as <M-...>
" <D-...>  command-key (Macintosh only)
imap jj <Esc>
"allow Ctrl-h Ctrl-j Ctrl-k Ctrl-l navigation when vim is opened in tmux
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
" A-t : toggle on/off nerdtree + tagbar
nnoremap <C-T> :NERDTreeToggle <CR> :TagbarToggle <CR>
" Alt-P : Open markdown preview
" Alt-p : Close markdown preview
nmap <silent> <A-P> <Plug>MarkdownPreview
nmap <silent> <A-p> <Plug>StopMarkdownPreview
" Alt-T : Create table of contents at the cursor location
nnoremap <A-T> :GenTocGitLab <CR>

"
" FILES FORMATS
" 
" default 
set cindent
set softtabstop=2
set shiftwidth=2
set expandtab
inoremap hh <C-V><Tab>

"
" GLOBAL SETTINGS
" 
"Set shell with bash for vim only
"Without this option, switching from vim to fish shell is very slow
set shell=/bin/bash\ -i
"No compatibility with VI
set nocompatible
"Fix crusor bug characters
set guicursor=
"Highlight cursor line
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
"syntax coloration
syntax on
" vim editor theme using alduin plugin
colorscheme alduin

