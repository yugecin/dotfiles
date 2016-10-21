set nocompatible

"hides buffers instead of closing
set hidden

set wrap
set tabstop=8
set backspace=indent,eol,start "allow backspace

set autoindent
set copyindent
set smartcase "ignore case if search pattern is all lowercase

set hlsearch
set incsearch "show search as you type

set nobackup
set noswapfile

set ruler
set showcmd

set so=9
syn on

let $LANG="en_US"
let $LANGUAGE="en_US"

if has("gui_running")
	set lines=45 columns=145
	set langmenu="en_US"
	set guioptions-=m  "menu bar
	set guioptions-=T  "toolbar
	set guioptions-=r  "scrollbar
	"set guifont=Terminus\ 9
	set guifont=Terminus\ Bold\ 10
endif

set relativenumber
set number

if $TERM == 'xterm-256color'
	colors 256-grayvim
	set t_Co=256
else
	"colors desert
	"colors darker-robin
endif

"colors black
"colors blackmy
colors blackmysol
"colors hh

set cursorline

map <F2> :bp<CR>
map <F3> :bn<CR>
map <F4> :nohlsearch<CR>

" iCursor hi for insert cursor, no blink and block for all modes
set guicursor=i:iCursor,a:blinkon0-block

"whitespace stuff
"set encoding=utf-8
"set listchars=tab:»\ ,trail:·
"set list

"airline
"set laststatus=2
"
"let g:airline_powerline_fonts = 0
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_theme='darkmy'
"
""let g:airline_section_a = '%{airline#util#wrap(airline#parts#mode(),0)}'
""let g:airline_section_x = '%{airline#util#wrap(airline#parts#ffenc(),0)}'
""let g:airline_section_y = '%{strftime("%d-%b-%y %H:%M")}'
"let g:airline_section_a = ''
"let g:airline_section_b = ''
"let g:airline_section_x = ''
"let g:airline_section_y = ''
"let g:airline_section_z = '%03l(%03L)'
"
"let g:airline#extensions#whitespace#mixed_indent_algo = 2

"buffer
"let g:airline#extensions#bufferline#overwrite_variables = 0
"let g:bufferline_echo = 0
"let g:bufferline_solo_highlight = 1
"let g:bufferline_active_highlight = 'StatusLine'
"let g:bufferline_inactive_highlight = 'StatusLineNC'
"let g:bufferline_show_bufnr = 0
"let g:bufferline_active_buffer_left = '|'
"let g:bufferline_active_buffer_right = ''
"let g:bufferline_modified = '*'

let g:rainbow_active=0

set laststatus=0

