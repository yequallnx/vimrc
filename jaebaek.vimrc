set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/syntax/spvasm.vim

" try
" source ~/.vim_runtime/my_configs.vim
" catch
" endtry

"---- Jaebaek ----"

"for fast scroll
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>

set nu ru sc wrap ls=2 lz                " -- appearance
set et bs=2 ts=4 sw=4 sts=0            " -- tabstop
set noai nosi hls is ic cf ws scs magic  " -- search
set sol sel=inclusive mps+=<:>           " -- moving around
set ut=10 uc=200                         " -- swap control
set report=0 lpl wmnu                    " -- misc.

" immediate buffer configuration
map <silent> <Leader>n :let &nu = 1 - &nu<CR>
map <silent> <Leader>l :let &list = 1 - &list<CR>
map <silent> <Leader>p :let &paste = 1 - &paste<CR>
map <silent> <Leader>w :let &wrap = 1 - &wrap<CR>
nmap <silent> <Leader>1 :set ts=1 sw=1<CR>
nmap <silent> <Leader>2 :set ts=2 sw=2<CR>
nmap <silent> <Leader>4 :set ts=4 sw=4<CR>
nmap <silent> <Leader>8 :set ts=8 sw=8<CR>

" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

vmap <Tab> >gv
vmap <S-Tab> <gv

" syntastic
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

map <silent> <Leader>s :SyntasticCheck<CR>
map <silent> <Leader>r :SyntasticReset<CR>

map <silent> <Leader>x :CtrlP<CR>
map <silent> <Leader>v :CtrlPMRUFiles<CR>

map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>

map <silent> <Leader>b :BufExplorer<CR>

map <silent> <Leader>s :source ~/.vim_runtime/syntax/spvasm.vim<CR>
