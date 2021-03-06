
" Install and compile YouCompleteMe
" git clone ...
" cd ~/.vim/bundle/YouCompleteMe
" git submodule update --init --recursive
" sudo apt-get install cmake
" ./install.py --clang-completer

"------------------------------------------------------------

" pathogen, autoloads any plug-ins under ~/.vim/bundle
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
"
" ..then see: https://github.com/tomtom/vimtlib/blob/master/INSTALL.TXT
" execute pathogen#infect()

"------------------------------------------------------------

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

"------------------------------------------------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
"
" All of your Plugins must be added before the following line
call vundle#end()

"------------------------------------------------------------

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

"------------------------------------------------------------

" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline


"------------------------------------------------------------

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
" set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


"------------------------------------------------------------

" Indentation settings for using spaces instead of tabs.

" Set 'tabstop' and 'shiftwidth' to whatever you prefer and use
" 'expandtab'.  This way you will always insert spaces.  The
" formatting will never be messed up when 'tabstop' is changed.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Source project-specific .vimrc
set exrc
" No shell or write, display map commands
set secure

"------------------------------------------------------------
" Mappings
"
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>


"------------------------------------------------------------
" gf
"
" let &path.="$ANDROID_ROOT/art/compiler/optimizing,$ANDROID_ROOT/art/" etc.

"------------------------------------------------------------

" ignore case when searching
set ic

" highlight search results
set hls

set nu

set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

"------------------------------------------------------------
""ctags"
"sudo apt-get install exuberant-ctags"
""<F2> to rebuild tags"
"Ctrl-] to find the tag under cursor"
""Ctrl-t to go back"
map <F2> :!ctags -o .tags --recurse --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q<CR>:!mv .tags tags<CR>


