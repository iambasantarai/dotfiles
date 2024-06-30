"---------SETS----------
syntax on
syntax enable
set encoding=UTF-8
set shortmess+=c
set nu
set rnu
set hidden
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set cursorline
set nowrap
set smartcase
set nobackup
set undofile
set undodir=~/.vim/undodir
set incsearch
set noswapfile
set nohlsearch
set noshowmode
set scrolloff=10
set laststatus=2
set background=dark

"----------STATUS-LINE----------
set statusline=
set statusline+=%{StatuslineGit()}
set statusline+=%#IncSearch#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#CursorLineNr#
set statusline+=\ %F
set statusline+=%= "Right side settings
set statusline+=%#Search#
set statusline+=[%{getbufvar(bufnr('%'),'&mod')?'modified':'saved'}]
set statusline+=\ %l/%L
set statusline+=\ [%c]

"show git branch on statusline
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

"netrw file explorer
let g:netrw_banner =0
let g:netrw_browse_split =2
let g:netrw_winsize =25

"colorscheme habamax
"colorscheme slate
colorscheme retrobox

"transparent background
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE


"----------KEY-MAPPINGS----------
let mapleader = " "

"save and Quit
nnoremap <Leader>q :wq<CR>
nnoremap <Leader>w :w<CR>

"navigation between window splits
nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>

"close unfocused split
nnoremap <Leader>cs :close<CR>

"open netrw file explorer
nnoremap <Leader>fe :Vex<CR>

"make an executable file
nnoremap <Leader>x :!chmod +x %<CR>

"search and replace
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

"escape
inoremap jk <Esc>

"compile and run c++ code
nnoremap <f5> :w <bar> !g++ -std=c++11 % -o %:r && ./%:r <CR>

"indent
vnoremap < <gv
vnoremap > >gv

"behave vim
nnoremap Y y$

"moving text
vnoremap J :m '>+1'<CR>gv=gv
vnoremap K :m '>-2'<CR>gv=gv
