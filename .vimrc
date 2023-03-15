let $vimhome=fnamemodify(resolve(expand("~/.vimrc")), ':p:h')
let $vundle=$vimhome."/bundle/Vundle.vim"

set nocompatible

filetype off
set rtp+=$vundle
call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'             

    Plugin 'scrooloose/nerdtree'                
    Plugin 'majutsushi/tagbar'                  
    Plugin 'kien/ctrlp.vim'                    
    Plugin 'bling/vim-airline'                 
    Plugin 'vim-airline/vim-airline-themes'    
    Plugin 'Lokaltog/powerline'                
    Plugin 'fisadev/FixedTaskList.vim'          
    Plugin 'rosenfeld/conque-term'              
    Plugin 'tpope/vim-surround'                 
    Plugin 'flazz/vim-colorschemes'            
    Plugin 'garbas/vim-snipmate'               
    Plugin 'MarcWeber/vim-addon-mw-utils'      
    Plugin 'tomtom/tlib_vim'                  
    Plugin 'honza/vim-snippets'                
    Plugin 'tpope/vim-commentary'              
    Plugin 'mitsuhiko/vim-sparkup'             
    Plugin 'Rykka/riv.vim'                     
    Plugin 'Valloric/YouCompleteMe'            
    Plugin 'klen/python-mode'                   
    Plugin 'scrooloose/syntastic'             

call vundle#end()                          
filetype on
filetype plugin on
filetype plugin indent on

syntax enable                             

set t_Co=256                               
colorscheme wombat256mod                   

set number                                 
set ruler
set ttyfast                                

set tabstop=4                              
set shiftwidth=4                            
set smarttab                               
set expandtab                              
set autoindent                              

set cursorline                              
set showmatch                               
set enc=utf-8	                           
set nobackup 	                            
set nowritebackup                          
set noswapfile 	                            

set backspace=indent,eol,start              

set scrolloff=10                            

set clipboard=unnamed                       

set exrc                                   
set secure                                  


inoremap jj <Esc>
inoremap jk <Esc>


tab sball
set switchbuf=useopen
set laststatus=2
nmap <F9> :bprev<CR>
nmap <F10> :bnext<CR>
nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>


set incsearch	                            
set hlsearch	                            


let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1


let g:tagbar_autofocus=0
let g:tagbar_width=42
autocmd BufEnter *.py :call tagbar#autoopen(0)


let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     
let NERDTreeWinSize=40
autocmd VimEnter * if !argc() | NERDTree | endif 
nmap " :NERDTreeToggle<CR>


let g:snippets_dir='~/.vim/vim-snippets/snippets'
let g:snipMate = {'snippet_version' : 1}


let g:riv_disable_folding=1



let g:pymode_python='python3'
let g:syntastic_python_python_exec='python3'

let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_rope_complete_on_dot=0
let g:pymode_rope_auto_project=0
let g:pymode_rope_enable_autoimport=0
let g:pymode_rope_autoimport_generate=0
let g:pymode_rope_guess_project=0

let g:pymode_doc=0
let g:pymode_doc_bind='K'

let g:pymode_lint=0

let g:pymode_virtualenv=1

let g:pymode_breakpoint=1
let g:pymode_breakpoint_key='<leader>b'


let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all

augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,rst,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python,rst,c,cpp match Excess /\%81v.*/
    autocmd FileType python,rst,c,cpp set nowrap
    autocmd FileType python,rst,c,cpp set colorcolumn=80
augroup END

let g:pymode_folding=0

let g:pymode_indent=1

let g:pymode_run=1
let g:pymode_run_bind='<F5>'

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='X'
let g:syntastic_style_error_symbol='X'
let g:syntastic_warning_symbol='x'
let g:syntastic_style_warning_symbol='x'
let g:syntastic_python_checkers=['flake8', 'pydocstyle', 'python3']

set completeopt-=preview

let g:ycm_global_ycm_extra_conf='~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0

nmap <leader>g :YcmCompleter GoTo<CR>
nmap <leader>d :YcmCompleter GoToDefinition<CR>
