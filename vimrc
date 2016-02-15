" 编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8
set path=$PWD/**
" 配色
syntax enable
set background=dark
colorscheme solarized
" 显示行号
set nu
set wrap 
set textwidth=70
set hlsearch "搜索时高亮显示被找到的文本
set ignorecase smartcase "搜索时智能忽略大小写，输入一个大写字母的时候进行精确匹配
filetype indent on "自适应不同语言的智能缩进
set expandtab "将制表符扩展为空格
set tabstop=4 "设定tab的长度为4
set shiftwidth=4 "设置格式化时制表符占用空格数
set softtabstop=4 "把连续数量的空格视为一个制表符
set autoread "文件自动重新读入
set ignorecase "检索时忽略大小写
set linespace=4 "行间距
set guifont=Monaco:h12 "字体和大小
"pathogen管理插件
execute pathogen#infect() 
"Nerdtree显示目录树{
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"}
if has("gui_running") 
    set guioptions-=L " 隐藏左侧滚动条 
    set guioptions-=r " 隐藏左侧滚动条 
    set guioptions-=b " 隐藏底部滚动条 
endif 
" 缩进显示插件vim-indent-guides。启动 vim 时直接启用插件
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size=1
