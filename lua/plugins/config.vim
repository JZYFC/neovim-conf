" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'nvim-tree/nvim-tree.lua'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
