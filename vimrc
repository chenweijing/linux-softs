set nocompatible              " be iMproved, required
filetype off                  " required

if has("autocmd")
    autocmd! bufwritepost vimrc source /etc/vim/vimrc
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'gmarik/vundle'

call vundle#end()
filetype plugin indent on

let mapleader =";"
set enc=utf-8

" 编码设置
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gd2312,cp936
set termencoding=utf-8

set laststatus=2
set t_Co=256
set autoindent
set autowrite

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set history=50
set hlsearch
set incsearch
set encoding=utf-8
set mouse=a
set autoread
" 设置默认进行大小写不敏感查找
set ignorecase
" 如果有一个大写字母，则切换到大小写敏感查找
set smartcase


" tab 设置
nnoremap <leader>n <Esc>:tabnew<CR>
nnoremap <leader>c <Esc>:tabc<CR>
map <F3> <Esc>:tabnext <CR>

" 共享剪切板
set clipboard+=unnamed 

" ctrl+c 复制选中的文本
vnoremap <c-c> +y
" 普通模式下 Ctrl+c 复制文件路径
nnoremap <c-c> :let @+ = expand('%:p')<cr>

" set nohlsearch
" hi Search term=bold ctermfg=2 gui=bold guifg=SeaGreen
" hi IncSearch term=bold ctermfg=2 gui=bold guifg=SeaGreen

" hi! link SignColumn   LineNr
" hi! link ShowMarksHLl DiffAdd
" hi! link ShowMarksHLu DiffChange


" hi! link ShowMarksHLu DiffChangeall


call pathogen#infect()

" nerdtree
map <F2> :NERDTreeToggle<CR>
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=31
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1

let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>

let g:ycm_show_diagnostics_ui = 1 "开启实时错误或者warning的检测
let g:ycm_add_preview_to_completeopt = 0 "关闭不全预览
" 允许vim加载.ycm_extra_conf.py文件，不在提示
let g:ycm_confirm_extra_conf=0
set completeopt=longest,menu
" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif 
" 补全内容不以分割子窗口形式出现，只显示补全列表
" set completeopt -= preview
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 开启ycm标签补全引擎
" let g:ycm_collect_indentifiers_from_tags_files=1
" 禁止缓存匹配项， 每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

" 错误标记
let g:ycm_error_symbol = ">>" "set error or warning signs

" warning标记
let g:ycm_warning_symbol = "~~"

" 颜色
" highlight YcmErrorSign ctermbg = none
" highlight YcmWarningSign ctermbg=none
highlight YcmWaringSection ctermbg=none
highlight YcmErrorLine ctermbg=none
highlight YcmWarningLine ctermbg=none

highlight YcmErrorSection ctermfg = 11
highlight YcmWarningSection ctermfg = 11

highlight Search ctermbg=grey ctermfg=black
highlight TabLineSel term=bold cterm=bold
highlight PmenuSel cterm=bold ctermbg=15 ctermfg=3
highlight SelectedLineNr cterm=bold ctermbg=15 ctermfg=LightBlue
" highlight PmenuSel cterm=bold ctermbg=darkblue ctermfg=white
" highlight PmenuSel cterm=bold ctermbg=darkgreen ctermfg=white
" 当光标一段时间保持不动了，就禁止高亮
autocmd cursorhold * set nohlsearch
" 当输入查找命令时， 再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>
