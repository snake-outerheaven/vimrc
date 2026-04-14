" --- CORE SETTINGS ---
set nocompatible              " Be improved, not compatible with Vi
filetype plugin indent on     " Essential for YCM and C development
syntax on                     " Color coding
set number                    " Line numbers are non-negotiable
"set relativenumber            " Makes '5j' or '10k' much easier
set mouse=a                   " Allows scrolling and clicking if needed
set hidden                    " Switch buffers without saving first

" --- CLEANER UI ---
set laststatus=2              " Always show the status line (Airline)
set noshowmode                " Airline shows the mode, so we don't need --INSERT--
"set cursorline                " Just a subtle highlight on the current line
set title                     " Set terminal title to the filename

" --- C89 / CODING STYLE ---
set tabstop=4                 " 1 tab = 4 columns
set shiftwidth=4              " Indent by 4 spaces
set expandtab                 " Use spaces (better for GitHub portability)
set autoindent
set smartindent

" --- SEARCH ---
set hlsearch                  " Highlight results
set incsearch                 " Jump to results as you type
nnoremap <space> :noh<CR>     " Use Spacebar to clear highlights (very clean)

" --- PLUGINS (DEBIAN DEFAULTS) ---

" 1. File Explorer (Built-in Netrw)
" Much 'less weird' than installing bulky plugins
let g:netrw_banner = 0        " Remove the bulky help text
let g:netrw_liststyle = 3     " Tree view
let g:netrw_winsize = 20      " 20% width
nnoremap <C-n> :Lex<CR>       " Ctrl+n to toggle the explorer

" 2. YouCompleteMe
" Keep it simple: let it use the system default config
let g:ycm_confirm_extra_conf = 0

" Don't suggest words from comments
let g:ycm_complete_in_comments = 0

" Only start suggesting after I type 2 characters
let g:ycm_min_num_of_chars_for_completion = 2

" Don't collect every single word in the file as an identifier
" (This stops it from suggesting random words you used in text)
let g:ycm_collect_identifiers_from_comments_and_strings = 0

" Only show a max of 10 suggestions (keeps the UI clean)
let g:ycm_max_diagnostics_to_display = 10

" 3. Airline (Status Bar)
" Disable the 'fancy' symbols that require special fonts to avoid weird characters
let g:airline_powerline_fonts = 0
let g:airline_theme = 'dark'

" --- SHORTCUTS ---
" Make moving between split windows easier (Ctrl+hjkl)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
