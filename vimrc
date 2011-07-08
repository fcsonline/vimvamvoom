:let mapleader=","
:imap jj <Esc>

set nocompatible

set number
set ruler
syntax on

" Set encoding
set encoding=utf-8

"Remove top bar
set guioptions=aAce

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,test/fixtures/*,vendor/gems/*

"fullscreen mode
map <D-CR> :set invfu<CR>     "toggle fullscreen mode
set fuoptions+=maxvert,maxhorz

"statusline setup
set statusline=%f       "tail of the filename
set statusline+=%m      "modified flag
"Git
set statusline+=[%{fugitive#statusline()}]
set statusline+=%y      "filetype

set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

"Pathogne plugin
call pathogen#runtime_append_all_bundles() 

"color
if has("gui_running")
    "tell the term has 256 colors
    set t_Co=256
    colorscheme ir_black
    set guitablabel=%M%t
    set lines=40
		set linespace=1
    set columns=115

    if has("gui_gnome")
        set term=gnome-256color
        set guifont=Monospace\ Bold\ 12
    endif

    if has("gui_mac") || has("gui_macvim")
        "set guifont=Menlo:h14
				set guifont=Monaco:h12
        " key binding for Command-T to behave properly
        " uncomment to replace the Mac Command-T key to Command-T plugin
        "macmenu &File.New\ Tab key=<nop>
        "map <D-t> :CommandT<CR>
        " make Mac's Option key behave as the Meta key
        try
          set transparency=5
        catch
        endtry
    endif

else
    "dont load csapprox if there is no gui support - silences an annoying warning
    let g:CSApprox_loaded = 1

    "set railscasts colorscheme when running vim in gnome terminal
    if $COLORTERM == 'gnome-terminal'
        set term=gnome-256color
        colorscheme railscasts
    else
        colorscheme default
    endif
endif