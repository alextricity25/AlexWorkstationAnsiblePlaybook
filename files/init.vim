" THIS FILE USES vim-plug
" Disable the arrow keys.
" https://lucasfcosta.com/2019/02/10/terminal-guide-2019.html
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Specific a directory for plugins
" I'm using vim-plug for vim plugins
" https://github.com/junegunn/vim-plug
" https://github.com/junegunn/vim-plug#example
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes.

" Installing neomake for asynchronous program execution
Plug 'neomake/neomake'
" Install NERDTree
" The NERDTree is a file system explorer for the Vim editor. 
" Using this plugin, users can visually browse complex directory hierarchies, 
" quickly open files for reading or editing, and perform basic file system operations.
" https://github.com/scrooloose/nerdtree
Plug 'https://github.com/scrooloose/nerdtree.git'

" Installing fzf and fzf-vim
" fzf is a genral-purpose command-line fuzzy finder
" https://github.com/junegunn/fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Installing vim-polyglot
" https://freshman.tech/vim-javascript/
Plug 'sheerun/vim-polyglot'

call plug#end()

" Turn line numbers on
set number

" NERDTree on ctrl+n
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1

" Bind fzf to ctrl+p
noremap <C-P> :Files<CR>
