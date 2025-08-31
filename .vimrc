set number

call plug#begin()
Plug 'preservim/nerdtree'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }


Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set autoindent

set cindent

highlight LineNr ctermbg=236

" b for bash
nnoremap <C-b> :belowright term ++rows=10<CR>

syntax on
highlight LineNr ctermfg=blue

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn


" Treat .m files as Objective-C
augroup objc_fix
  autocmd!
  autocmd BufRead,BufNewFile *.m set filetype=objc
augroup END

nnoremap 1 $

" Toggle NERDTree sidebar with Ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>

" Close NERDTree window with Ctrl+c
nnoremap <C-c> :NERDTreeClose<CR>

" Next buffer (file)
nnoremap <Tab> :bnext<CR>

" Previous buffer (file)
nnoremap <S-Tab> :bprevious<CR>

" Create new vim tab. Only from version 7.0 and higher
nnoremap <C-t> :tabnew<CR> 

" Format current buffer with clang-format using \cf
nnoremap <leader>cf :%!clang-format<CR>





