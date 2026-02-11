set nocompatible
set number
 
syntax enable
colorscheme slate
filetype plugin on
 
set path+=**
set wildmenu
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set t_Co=256
 
let g:netrw_banner=0
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
 
 
"STATUSLINE
set laststatus=2
set noshowmode
 
"STATUSLINE MODE
let g:currentmode={
\ 'n' : 'NORMAL ',
\ 'v' : 'VISUAL ',
\ 'V' : 'V-LINE ',
\ "\<C-V>" : 'V-BLOCK' ,
\ 'i' : 'INSERT ',
\ 'R' : 'R ',
\ 'Rv' : 'V-REPLACE ',
\ 'c' : 'COMMAND ',
\}
 
set statusline=
set statusline+=\ %#NormalC#%{(mode()=='n')?'\ NORMAL\ ':''}
set statusline+=%#InsertC#%{(mode()=='i')?'\ INSERT\ ':''}
set statusline+=%#VisualC#%{(mode()=='v')?'\ VISUAL\ ':''}
set statusline+=%#Filename#
set statusline+=\ %f
set statusline+=%#ReadOnly#
set statusline+=\ %r
set statusline+=%m
set statusline+=%=
set statusline+=%#Fileformat#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ [%{&fileformat}\]
set statusline+=%#Position#
set statusline+=\ [%l/%L]
 
set title
set ruler
set cursorline
set showmatch
set nowrap
