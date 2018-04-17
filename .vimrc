set tabstop=4

syntax on
set cindent
set smartindent

set encoding=utf-8
set fileencodings=utf-8,euc-kr

set shiftwidth=4
set softtabstop=4

set autoindent
set number
"numberwidth
set numberwidth=4

set ff=unix

set laststatus=2
set statusline=%<%F%h%m%r%h%w%y\ %{strftime(\"%Y/%m/%d-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P

"set paste

"highlight previous search pattern
set hlsearch

"show cursor line
"set cursorline

"color torte

"Ignore Case
" set ic

"Clipboard
set cb=unnamed
"show match bracket
"set showmatch
"set matchtime=5


"Window Fix Width
"set wfw
"set wfh



if &term =~ "xterm"
  if has("terminfo")
    set t_Co=8
    set t_Sf=^[[3%p1%dm
    set t_Sb=^[[4%p1%dm
  else
    set t_Co=8
    set t_Sf=^[[3%dm
    set t_Sb=^[[4%dm
  endif
endif

" Taglist plugin
filetype on
nnoremap <silent> <F2> :TlistToggle<CR>
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_Auto_Open = 0
let Tlist_Use_Right_Window = 1

" Source Explorer plugin
nnoremap <silent> <F3> :SrcExplToggle<CR>

"nmap <F8> :SrcExplToggle<CR>
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

let g:SrcExpl_winHeight = 8
let g:SrcExpl_refreshTime = 100
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"
let g:SrcExpl_isUpdateTags = 0


" NERDTree plugin
let NERDTreeWinPos = "left"
nnoremap <silent> <F4> :NERDTreeToggle<CR>
" nmap <F9> :NERDTreeToggle<CR>


" ctags plugin
"set tags=./tags,tags,../tags,../../tags,../../../tags,../../../../tags
set tag=./tags;/


" --------------
" original style
" --------------
""syntax on
set term=rxvt
""set ts=4
""set sw=4
set bg=dark
""set hlsearch
"set ruler
"set cindent
""set nu
"set ai
set smartindent
"set incsearch
"colorscheme evening
"set history=1000
"set ignorecase
"set showmatch

let NERDTreeIgnore=['.o$']


" --------------
" add to
" --------------
" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set \"Enter" key to jump into the exact definition context 
" let g:SrcExpl_jumpKey = \"<ENTER>" 

" // Set \"Space" key for back from the definition context 
"let g:SrcExpl_gobackKey = \"<SPACE>" 

" // In order to Avoid conflicts, the Source Explorer should know what plugins 
" // are using buffers. And you need add their bufname into the list below 
" // according to the command \":buffers!" 
let g:SrcExpl_pluginList = [ 
        \ "__Tag_List__", 
        \ "_NERD_tree_", 
        \ "Source_Explorer" 
    \ ] 

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" //  create/update a tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 

" -----------------------------
"nmap <F10> :!find `pwd` \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print > cscope.files ;

nmap <F10> :!find `pwd` \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print > cscope.files;
		  \cscope -b -i cscope.files -f cscope.out<CR>
		  \:cs kill -1<CR>:cs add cscope.out<CR>

if has("cscope")
    set csprg=/usr/bin/cscope
    set cscopetag
    set csto=0
    set cscopeverbose
    set cst
    set nocsverb

    if filereadable ("./cscope.out")
        cs add cscope.out
    endif
    set csverb

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@><C-@>i :vert scs find i <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
endif

colo evening

set exrc
set secure
hi ModeMsg ctermfg=green

set ts=8
set smarttab

"source /root/Downloads/autotag.vim"
