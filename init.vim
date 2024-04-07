set encoding=utf-8
syntax enable
set number
set relativenumber
set mouse-=a
set noswapfile
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set backspace=indent,eol,start
" set so=999

hi Conceal guibg=black ctermbg=black  ctermfg=white
hi ColorColumn guibg=black ctermbg=black ctermfg=black

"separators, floaterm color config
hi Normal guibg=black ctermbg=black  ctermfg=121
hi NormalFloat guibg=black ctermbg=black guifg=121 ctermfg=121
hi NormalNC guibg=black ctermbg=black  ctermfg=121

hi Normal guibg=black ctermbg=black guifg=cyan ctermfg=white

hi Linenr guibg=black ctermbg=black guifg=121 ctermfg=121

hi SpellBad guibg=black ctermbg=black guifg=red ctermfg=121 cterm=bold


hi Identifier guibg=black ctermbg=black guifg=white ctermfg=121 cterm = None
hi Type guibg=black ctermbg=black guifg=white ctermfg=121 cterm = None
hi Comment guibg=black ctermbg=black guifg=white ctermfg=grey
hi Conditional guibg=black ctermbg=black guifg=white ctermfg=121 
hi Keyword guibg=black ctermbg=black guifg=white ctermfg=121 
hi Search guibg=black ctermbg=0 guifg=white ctermfg=blue cterm=bold 
hi IncSearch guibg=black ctermbg=0 guifg=white ctermfg=blue cterm=bold 
hi Error guibg=black ctermbg=black guifg=white ctermfg=red cterm=bold 
hi Statement guibg=black ctermbg=black guifg=white ctermfg=121

hi Pmenu guibg=black ctermbg=black guifg=white ctermfg=121 
hi PmenuSbar guibg=black ctermbg=black guifg=white ctermfg=white
hi StatusLine guibg=black ctermbg=black ctermfg=white

hi StatusLineNc guibg=black ctermbg=black ctermfg=white
hi Question guibg=black ctermbg=black ctermfg=white
hi QuickFixLine guibg=black ctermbg=black ctermfg=white
hi FixLine guibg=black ctermbg=black ctermfg=black
hi SpellBad guibg=black ctermbg=black ctermfg=black
hi SpellCap guibg=black ctermbg=black ctermfg=white
hi SpellLocal guibg=black ctermbg=black ctermfg=black
hi SpellRare guibg=black ctermbg=black ctermfg=white
hi SpecialKey guibg=black ctermbg=black ctermfg=black

hi TabLineFill guibg=black ctermbg=black ctermfg=grey
hi TabLine guibg=black ctermbg=black ctermfg=grey
hi TabLineSel guibg=black ctermbg=black ctermfg=121

hi Title guibg=black ctermbg=black ctermfg=white
hi Visual guibg=black ctermbg=black ctermfg=121
hi VisualNOS guibg=black ctermbg=black ctermfg=121
hi Menu guibg=black ctermbg=black ctermfg=black

hi Scrollbar guibg=black ctermbg=black ctermfg=121
hi CursorIM guibg=black ctermbg=black ctermfg=121
hi TermCursor guibg=black ctermbg=black ctermfg=121
hi Folded guibg=black ctermbg=black ctermfg=121
hi FoldedColumn guibg=black ctermbg=black ctermfg=121
hi Errormsg guibg=black ctermbg=black ctermfg=121
hi DiffText guibg=black ctermbg=black ctermfg=121
hi DiffChange guibg=black ctermbg=black ctermfg=121
hi DiffDelete guibg=black ctermbg=black ctermfg=121
hi WinSeparator guibg=black ctermbg=black ctermfg=121
hi WinSeparator guibg=black ctermbg=black ctermfg=121
hi TermCursor guibg=black ctermbg=black ctermfg=121
hi PmenuThumb guibg=black ctermbg=black ctermfg=121
hi SignColumn guibg=black ctermbg=black ctermfg=121
hi FoldColumn guibg=black ctermbg=black ctermfg=121
hi Error guibg=black ctermbg=black ctermfg=121
hi CursorColumn guibg=black ctermbg=black ctermfg=121

" for coc
set updatetime=300
set nobackup
set nowritebackup
set signcolumn=yes

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call ShowDocumentation()<CR>
  
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
call plug#begin()
Plug 'rust-lang/rust.vim'
Plug 'evanleck/vim-svelte'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'Himujjal/tree-sitter-svelte'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'voldikss/vim-floaterm'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'glepnir/dashboard-nvim'
Plug 'vim-airline/vim-airline-themes'
Plug 'takac/vim-fontmanager'
Plug 'powerline/fonts'
Plug 'tpope/vim-commentary'
Plug 'sindresorhus/hyper-snazzy'
Plug 'tpope/vim-surround'
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf'
Plug 'ggreer/the_silver_searcher'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'BurntSushi/ripgrep'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'vimwiki/vimwiki'
Plug 'enricobacis/vim-airline-clock'
Plug 'MeF0504/vim-pets'
Plug 'jpalardy/vim-slime', { 'for': 'python' }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }

call plug#end()

let g:airline_theme='ayu_mirage'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#whitespace#enabled = 0

let g:mkdp_open_to_the_world = 1
let g:mkdp_open_ip = 'localhost'
let g:mkdp_port = 8080
function g:EchoUrl(url)
    :echo a:url
endfunction
let g:mkdp_browserfunc = 'g:EchoUrl'

" floaterm config
let g:floaterm_height = 0.99
let g:floaterm_width = 0.99
let g:floaterm_opener = 'tabe'

" tabnine
let g:TabNine_binary_path = '/bin/tabnine'
let g:TabNine_complete_func = { -> tabnine#autoimport() }

map <C-h> gT 
map <C-l> gt 

tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
tnoremap <Esc> <C-\><C-n> 
nnoremap <C-A-h> <C-w>>
nnoremap <C-A-l> <C-w><
nnoremap <C-A-k> <C-w>+
nnoremap <C-A-j> <C-w>-
nnoremap <A-f> <cmd>Telescope find_files<cr>
nnoremap <A-g> <cmd>Telescope live_grep<cr>
nnoremap <A-b> <cmd>Telescope buffers<cr>

tnoremap <A-t> <C-\><C-N>:FloatermToggle<CR>
inoremap <A-t> <C-\><C-N>:FloatermToggle<CR>
nnoremap <A-t> :FloatermToggle<CR>

nnoremap <A-c> <cmd>FloatermKill<cr>
tnoremap <A-c> <C-\><C-N><cmd>FloatermKill<cr>

nnoremap <A-s> <cmd>FloatermShow<cr>

nnoremap <A-n> <cmd>FloatermNew <cr>
tnoremap <A-n> <C-\><C-N><cmd>FloatermNew <cr>
inoremap <A-n> <C-\><C-N><cmd>FloatermNew <cr>

nnoremap <A-r> <cmd>FloatermNew ranger <CR>
tnoremap <A-r> <C-\><C-N><cmd>FloatermNew ranger <CR>
inoremap <A-r> <C-\><C-N><cmd>FloatermNew ranger <CR>

nnoremap <A-S-l> <cmd>FloatermNext<CR>
tnoremap <A-S-l> <C-\><C-N><cmd>FloatermNext<CR>

nnoremap <A-S-h> <cmd>FloatermPrev <CR>
tnoremap <A-S-h> <C-\><C-N><cmd>FloatermPrev <CR>

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-y> :TagbarToggle<CR>

