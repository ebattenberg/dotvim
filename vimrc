" Eric's Custom Options
"

" custom options


" path management
filetype off
execute pathogen#infect() 
execute pathogen#helptags()

set background=dark
set cindent
set shiftwidth=4
set tabstop=4
"set expandtab "only for python
set softtabstop=4
set autoindent
syntax on
set number
set incsearch
set hlsearch
set mouse=a
set foldmethod=indent 
"set foldmethod=syntax "macvim: syntax folding makes completion very slow
"set complete=.,b
filetype on
filetype plugin indent on
set scrolloff=5

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 foldmethod=indent

" automatic line break
set lbr

" toggle highlighting of search terms
map <F4> :set hls!<bar>set hls?<CR>
nnoremap <silent> <Tab> :nohlsearch<bar>pclose<CR>|

" jump between tabs with mac command key (D)
nnoremap <D-[> gT
nnoremap <D-]> gt

" task list for TODO/FIXME!
map <leader>td <Plug>TaskList

" gundo file history browser
map <leader>g :GundoToggle<CR>

" PEP8 checker
"let g:pep8_map='<leader>8' 

" Syntastic checker
"map <leader>s :SyntasticCheck<CR>
"map <leader>sn :lnext<CR>
"map <leader>sp :lprev<CR>
"let g:syntastic_always_populate_loc_list = 1

" Toggle NERDTree
map <leader>n :NERDTreeToggle<CR>

" Completion
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"
"set completeopt=menuone,longest,preview


" cuda syntax highlighting
au BufNewFile,BufRead *.cu set ft=c
au BufNewFile,BufRead *.cuh set ft=c
"au BufNewFile,BufRead *.cu set ft=cu
"

" Latex-Suite
" IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_ViewRuleComplete_dvi = 'open $*.dvi &'
let g:Tex_ViewRuleComplete_pdf = 'open $*.pdf &'
"let g:Tex_ViewRuleComplete_pdf = 'evince $*.pdf &'
let g:Tex_MultipleCompileFormats = 'dvi,pdf'



" " TAGLIST 
" toggle taglist window
"nnoremap <silent> <F6> :TlistToggle<CR>
"set updatetime=2000
"let tlist_c_settings = 'c;c:class;d:macro;f:function;t:typedef;v:variable;m:members'
"let tlist_cpp_settings = 'c++;c:class;d:macro;p:prototype;f:function;t:typedef;v:variable;m:members'
"nnoremap <F5> :TlistToggle<CR>
"nnoremap <F6> :TlistShowPrototype<CR>
"let Tlist_WinWidth = 50
"set tags=./tags;/ "check recursively upward until we find a 'tags' file
"set cscopequickfix=s-,c-,d-,i-,t-,e-


" autocomplete from current file, loaded buffers, unloaded buffers
"set complete=.,b,u

"" for OmniCompleteCPP   
"set nocp
"filetype plugin on
"" use omnicompletecpp for c files also
"autocmd FileType c set omnifunc=ccomplete#CompleteCpp
"
"" configure tags - add additional tags here or comment out not-used ones
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/core
"" build tags of your own project with CTRL+F12
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"
"" OmniCppComplete
"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
""let OmniCpp_LocalSearchDecl = 1
"" automatically open and close the popup menu / preview window
""au CursorMovedI * if pumvisible() == 0|silent! pclose|endif
"au InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest,preview






" minibufexpl
" let g:miniBufExplMapWindowNavVim = 1 
" let g:miniBufExplMapWindowNavArrows = 1 
" let g:miniBufExplMapCTabSwitchBufs = 1 
" let g:miniBufExplModSelTarget = 1 
" let g:miniBufExplMaxSize = 1

" End Custom Options -----------------------
 
" " An example for a vimrc file.
" "
" " Maintainer:	Bram Moolenaar <Bram@vim.org>
" " Last change:	2006 Nov 16
" 
" " To use it, copy it to
" "     for Unix and OS/2:  ~/.vimrc
" "	      for Amiga:  s:.vimrc
" "  for MS-DOS and Win32:  $VIM\_vimrc
" "	    for OpenVMS:  sys$login:.vimrc
" 
" " When started as "evim", evim.vim will already have done these settings.
" if v:progname =~? "evim"
"   finish
" endif
" 
" " Use Vim settings, rather then Vi settings (much better!).
" " This must be first, because it changes other options as a side effect.
" set nocompatible
" 
" " allow backspacing over everything in insert mode
" set backspace=indent,eol,start
" 
" set history=50		" keep 50 lines of command line history
" set ruler		" show the cursor position all the time
" set showcmd		" display incomplete commands
" set incsearch		" do incremental searching
" 
" " For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" " let &guioptions = substitute(&guioptions, "t", "", "g")
" 
" " Don't use Ex mode, use Q for formatting
" map Q gq
" 
" " Switch syntax highlighting on, when the terminal has colors
" " Also switch on highlighting the last used search pattern.
"if &t_Co > 2 || has("gui_running")
"  syntax on
"  set hlsearch
"endif
" 
" " Only do this part when compiled with support for autocommands.
" if has("autocmd")
" 
"   " Enable file type detection.
"   " Use the default filetype settings, so that mail gets 'tw' set to 72,
"   " 'cindent' is on in C files, etc.
"   " Also load indent files, to automatically do language-dependent indenting.
"   filetype plugin indent on
" 
"   " Put these in an autocmd group, so that we can delete them easily.
"   augroup vimrcEx
"   au!
" 
"   " For all text files set 'textwidth' to 78 characters.
"   autocmd FileType text setlocal textwidth=78
" 
"   " When editing a file, always jump to the last known cursor position.
"   " Don't do it when the position is invalid or when inside an event handler
"   " (happens when dropping a file on gvim).
"   autocmd BufReadPost *
"     \ if line("'\"") > 0 && line("'\"") <= line("$") |
"     \   exe "normal! g`\"" |
"     \ endif
" 
"   augroup END
" 
" else
" 
"   set autoindent		" always set autoindenting on
" 
" endif " has("autocmd")








