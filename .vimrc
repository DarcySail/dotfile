set nocompatible              " be iMproved, required
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/fcitx.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'rking/ag.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/DrawIt'
Plugin 'hotoo/pangu.vim'
Plugin 'vim-airline/vim-airline'
"Plugin 'mhartington/oceanic-next'
"Plugin 'joshdick/onedark.vim'
"Plugin 'altercation/vim-colors-solarized'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"--------------------------Darcy's own edit----------------------------
"from this line on, all edit can be removed.
"
"the following lines are about my own plugin
"set rtp+=~/.vim/darcy_plugin
"source ~/.vim/darcy_plugin/hello.vim
"source ~/workstation/vim-relative-linenum-plugin/hello.vim


"================================================================================
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
set number
set relativenumber
set tabstop=4
set expandtab
set shiftwidth=4
set shiftround             " >> indents to next multiple of 'shiftwidth'.
set cindent
set autoindent
set smartindent
set smarttab
"解决粘贴排版混乱的问题
"set clipboard=unamedplus
set autowriteall
set autoread
let autosave=4
set showcmd                " Show already typed keys when more are expected.
set nrformats= "这会让 Vim 把所有数字都当成十进制
" <C-a> <C-x>对字母也能增减
set nrformats+=alpha

" ===========================================
" powerline的配置
set list
if has('multi_byte') && &encoding ==# 'utf-8'
    let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
    let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif
" ===========================================
" Show “invisible” characters
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_


" 开启实时搜索功能
set incsearch
" 智能大小写敏感
set smartcase
" 关闭兼容模式
"set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 匹配文件名时忽略大小写
set wildignorecase
" wildmode 好像是用于命令模式...
set wildmode=longest:list,full
" 高亮显示当前行/列
set cursorline
set cursorcolumn
set colorcolumn=80
" 禁止折行
"set nowrap
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
" 禁止swap文件
set noswapfile
set nobackup
set nowb
" 设置智能换行
set linebreak
" 启动的时候不显示那个援助乌干达儿童的提示
set shortmess=atI
" Ignore case when searching
set ignorecase
set hlsearch               " Keep matches highlighted.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.

set diffopt=context:1

"设置迅速退出insert模式
set timeout           " for mappings
set timeoutlen=1000   " default value
set ttimeout          " for key codes
set ttimeoutlen=10 " unnoticeable small value

" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
"set gdefault

" Don’t add empty newlines at the end of files
set binary
set noeol
" Don’t reset cursor to start of line when moving around.
set nostartofline



"允许鼠标操作
set mouse=a
" Enable syntax highlighting
syntax enable

"this two lines is setting to solve automatically wrap line over 80 charactor.
set tw=80
set fo+=t

"禁止中英混合时自动折行
set brk=
"set nowrap

"文件类型检测
filetype on
filetype plugin on


"" Ctrl + K 插入模式下光标向上移动
"imap <c-k> <Up>
"" Ctrl + J 插入模式下光标向下移动
"imap <c-j> <Down>
"" Ctrl + H 插入模式下光标向左移动
"imap <c-h> <Left>
"" Ctrl + L 插入模式下光标向右移动
"imap <c-l> <Right>

"折行移动
"nnoremap j gj
"nnoremap k gk

" tab键位移选中块
nnoremap <tab> V>
nnoremap <s-tab> V<
vnoremap <tab> >gv
vnoremap <s-tab> <gv
" 空格键选中单词
map <space> viw

let mapleader = ','
"为了反向字符查找功能
noremap \ ,

"系统剪贴板：复制，剪切
vnoremap <leader>c "+y
vnoremap <leader>x "+x
nnoremap <leader>p "+P

"set clipboard=unnamedplus

"下面的设置把在可视模式下选择的内容发送到剪贴板：
"set clipboard=unnamed,autoselect
"set guioptions+=a

"系统剪贴板：复制，剪切, 使用Ctrl + c, Ctrl + x
"vnoremap <C-c> "+y
"vnoremap <C-x> "+x
"实现单行上下位移
nnoremap <C-S-Up> ddkP
nnoremap <C-S-Down> ddp
"实现Ctrl + s 在normal和insert模式下保存
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>a
"错误跳转
nnoremap <leader>cc :cc<cr>
nnoremap <leader>cp :cp<cr>
"纵向页面大小调整
nnoremap <leader>> <C-w>>
nnoremap <leader>< <C-w><
"横向页面大小调整
nnoremap <leader>= <C-w>+
nnoremap <leader>- <C-w>-
"解除ctrl + i的绑定
unmap <C-i>
"快速打开.vimrc
nnoremap <leader>vr :e $MYVIMRC<cr>

"全局格式化文本
"nnoremap <leader>f gg=G<C-o><C-o>
" 直到下一次查找前，禁用高亮显示
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" 查询已经匹配的模式共有多少个匹配，cm意思是count match
nnoremap <leader>cm :%s///gn<CR>

"映射H,L在normal下为文字头部，尾部
"nnoremap H ^
"nnoremap L $

"()[]{}自动补全
"inoremap ( ()<esc>i
"inoremap [ []<esc>i
"inoremap { {<esc>o}<esc>O

"命令模式智能匹配
cnoremap <c-n> <down>
cnoremap <c-p> <up>
"代码定义跳转
"nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR>

"快速删除上一次的搜索内容
nnoremap <leader>dl :%s///g<CR>
"快速删除奇怪字符
nnoremap <leader>dt :%s/[▸ ]/ /g<CR>
"删除行尾空格
nnoremap <leader>db :%s/\s\+$//g<cr>
"强制保存sudo权限文件
nnoremap <leader>W :w !sudo tee % > /dev/null<CR>

"快速向上翻半页
nnoremap U <c-u>
"vnoremap U <c-u>
"快速向下翻半页
nnoremap D <c-d>
vnoremap D <c-d>

"测试相对位置不变
"nnoremap j gjzz
"nnoremap k gkzz

"切屏
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l

"输入分隔行
nnoremap <leader>= 80i=<esc>

"for ag.vim
nnoremap <c-f> :Ag<space>

"for tagbar
nnoremap <F8> :TagbarToggle<CR>

" for pwd
nnoremap <leader>n :!pwd<CR>
"map <leader>fm :pyf /usr/share/clang/clang-format-3.8/clang-format.py<cr>
"===============================================================================
"let g:clang_format#style_options = {
"            \ "AccessModifierOffset" : -4,
"            \ "AllowShortIfStatementsOnASingleLine" : "true",
"            \ "AlwaysBreakTemplateDeclarations" : "true",
"            \ "Standard" : "C++11"}

" map to <Leader>f in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><leader>f :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><leader>f :ClangFormat<CR>
" Toggle auto formatting:
"nmap <Leader>C :ClangFormatAutoToggle<CR>
"===============================================================================

"让vim开启文件时恢复上次退出时的状态
augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END
"===============================================================================
"keep clipboard when close vim
autocmd VimLeave * call system("echo -n $'" . escape(getreg(), "'") . "' | xsel -ib")

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo') && isdirectory(expand('~').'/.vim/backups')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif
"----------------------------------------

"autocmd BufReadPost *
"    \ if line("'\"") > 1 && line("'\"") <= line("$") |
"    \   exe "normal! g`\"" |
"    \ endif

"----------------------------------------
let g:ycm_global_ycm_extra_conf = '/home/darcy/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
""python with virtualenv support
"python << EOF
"import sys, vim, os
"
"ve_dir = vim.eval('$VIRTUAL_ENV')
"ve_dir in sys.path or sys.path.insert(0, ve_dir)
"activate_this = os.path.join(os.path.join(ve_dir, 'bin'), 'activate_this.py')
"execfile(activate_this, dict(__file__=activate_this))
"EOF
"let g:ycm_global_ycm_extra_conf = '/home/darcy/.vim/bundle/ycm_simple_conf/python/ycm_simple_conf.py'
"----------------------------------------

"autocmd TermResponse * :echo ">^.^<"
"autocmd BufWritePre * :normal gg=G<C-o>




"========================================
"tmp change for kernel programming
set path+=/usr/src/linux-headers-4.4.0-83/include
"==========================



"==========================
"this 4 lines is for Powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols= 'unicode'
set encoding=utf8

" for autosave plugin
let g:auto_save = 1  " enable AutoSave on Vim startup
"================================
" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
"set backup
"set backupdir   =$HOME/.vim/files/backup/
"set backupext   =-vimbackup
"set backupskip  =
"set directory   =$HOME/.vim/files/swap//
"set updatecount =100
"set undofile
"set undodir     =$HOME/.vim/files/undo/
"set viminfo     ='100,n$HOME/.vim/files/info/viminfo
"
"
"================================
" for ctags
set tags=tags;
set autochdir
"================================
nnoremap <silent> <F8> :TlistToggle<CR><CR>
" :Tlist              调用TagList
let Tlist_Show_One_File=0                    " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=0                 " 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close=1             " 自动折叠
"================================
" for cscope
if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif
"================================
function LoadCscope()
	if (executable("cscope") && has("cscope"))
		let UpperPath = findfile("cscope.out", ".;")
		if (!empty(UpperPath))
			let path = strpart(UpperPath, 0, match(UpperPath, "cscope.out$") - 1)
			if (!empty(path))
				let s:CurrentDir = getcwd()
				let direct = strpart(s:CurrentDir, 0, 2)
				let s:FullPath = direct . path
				let s:AFullPath = globpath(s:FullPath, "cscope.out")
				let s:CscopeAddString = "cs add " . s:AFullPath . " " . s:FullPath
				execute s:CscopeAddString
			endif
		endif
	endif
endfunction
command LoadCscope call LoadCscope()
"================================
" for neovim color theme OceanicNext
" if you have Neovim >= 0.1.5
"if (has("termguicolors"))
" set termguicolors
"endif
"
"" Theme
"syntax enable
"colorscheme OceanicNext
"let g:airline_theme='oceanicnext'
" onedark.vim override: Don't set a background color when running in a terminal;
" just use the terminal's background color
" `gui` is the hex color code used in GUI mode/nvim true-color mode
" `cterm` is the color code used in 256-color mode
" `cterm16` is the color code used in 16-color mode
"if (has("autocmd") && !has("gui_running"))
"  augroup colorset
"    autocmd!
"    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
"    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
"  augroup END
"endif

"================================
colo elflord
hi Normal ctermbg=none
"set t_ut=
"hi Normal guibg=NONE ctermbg=NONE
"hi NonText guibg=NONE ctermbg=NONE
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE
"================================
