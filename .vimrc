"Install plugin manager with:
"mkdir -p ~/.vim/autoload ~/.vim/bundle && \
"curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


"Install Airline
"git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

"Install Airline Theme
"git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

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
set cursorline  " highlight current line
set shiftwidth=2 " number of spaces when shift indenting
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tab to spaces
set cursorline  " highlight current line
set showmatch " highlight matching [{()}]
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

"Install Powerline
"pip install powerline-status
"Run Powerline Uncomment the following
"set rtp+=$HOME/.local/lib/python3.6/site-packages/powerline/bindings/vim/
" Always show statusline
"set laststatus=2


"" Activate airline Uncomment the following
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled = 0 
let g:airline#extensions#branch#enabled = 1 
let g:airline_left_sep = ' ❤  '
let g:airline_right_sep = ' 🟆  '
let g:airline_section_warning = '' 
let g:airline_section_y = '' 
let g:airline_section_x = '' 
set laststatus=2 " for airline

"============================================================
"" Start pathogen
"============================================================
execute pathogen#infect()
call pathogen#helptags()

set noruler
set noshowmode
set hidden
