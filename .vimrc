"Automatic Reloading of .vimrc
autocmd! bufwritepost .vimrc source %
"
"" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod

" Enable syntax highlighting
" " You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

"Install Powerline
"pip install powerline-status
set rtp+=$HOME/.local/lib/python3.6/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2
