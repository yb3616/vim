" === 插件列表: vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'		" 插件管理器
Plugin 'nanotech/jellybeans.vim'	" 配色主题
Plugin 'bling/vim-airline'			" 状态条
Plugin 'marijnh/tern_for_vim'		" JS自动补全(需要ycm和tern)
Plugin 'scrooloose/nerdtree'		" 目录树
Plugin 'chiel92/vim-autoformat'		" 格式化代码
Plugin 'drmingdrmer/xptemplate'		" html、引号等的手动补全方案
Plugin 'posva/vim-vue'				" vue高亮
call vundle#end()            " required
filetype plugin indent on    " required
" 插件选项: jellybeans
syntax on
colorscheme jellybeans
" 插件选项: airline
let g:airline_powerline_fonts = 1
" 插件选项: tern_for_vim
let g:tern_show_argument_hints='on_hold'
let g:tern_map_keys=1
" 插件选项: NERD tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <F9> :NERDTreeToggle<CR>
" 插件选项: vim-autoformat
noremap <F3> :Autoformat<CR>

" === 一般选项
" 自动缩进
set autoindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
" 设置当文件被改动时自动载入
set autoread
" 打开状态栏标尺
set ruler
" 突出显示当前行
set cursorline
" 开始折叠
set foldcolumn=0
set foldmethod=indent
set foldlevel=3
set foldenable
" 去掉输入错误的提示声音
set noeb
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 可以在buffer的任何地方使用鼠标
set mouse=a
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 打开退出时的位置
au BufReadPost * exe "normal! g`\""
