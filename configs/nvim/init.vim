"**********set**********
set encoding=utf-8
scriptencoding utf-8
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set cursorline
" 行表示で省略させない
set display=lastline
" 補完メニューの高さを指定
"set pumheight=10
" 行数を表示
set number
set title
set showmatch
set list
set ruler
set ambiwidth=double
syntax on
" PageUpを右移動に
set hlsearch!
" ハイライトをF3で切り替え
set backspace=indent,eol,start
if &compatible
  set nocompatible
endif
set background=dark
colorscheme chroma

"**********key mapping**********
nnoremap <F3> :set hlsearch!<CR>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
map <C-n> :NERDTreeToggle<CR>
map <C-t> :Template
nnoremap <silent> <C-m> :PrevimOpen<CR> " Ctrl-mでプレビュー
map <PageUp> h
" PageDownを左移動に
map <PageDown> l
" insert modeで無効化
inoremap <PageUp> <Nop>
inoremap <Pagedown> <Nop>
inoremap <C-\><C-n> <Esc>

"**********variables**********
let g:vim_markdown_folding_disabled=1
let g:previm_enable_realtime = 1

"**********path**********
let g:sonictemplate_vim_template_dir = [
            \'~/.config/nvim/template',
            \'~/dotfiles/template']
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

"**********functions**********
function! DeleteParenthesesAdjoin(left, right)
    let pos = col(".") - 1  " カーソルの位置．1からカウント
    let str = getline(".")  " カーソル行の文字列
    let parentLList = a:left
    let parentRList = a:right
    let cnt = 0

    let output = ""

    " カーソルが行末の場合
    if pos == strlen(str)
        return "\b"
    endif
    for c in parentLList
        " カーソルの左右が同種の括弧
        if str[pos-1] == c && str[pos] == parentRList[cnt]
            call cursor(line("."), pos + 2)
            let output = "\b"
            break
        endif
        let cnt += 1
    endfor
    return output."\b"
endfunction


filetype plugin indent on
filetype on
au! BufRead,BufNewFile *.py setfiletype python
au! BufRead,BufNewFile *.c setfiletype c
au! BufRead,BufNewFile *.html setfiletype html
au! BufRead,BufNewFile *.vim setfiletype vimscript
au! BufRead,BufNewFile Makefile setfiletype Makefile
au! BufRead,BufNewFile *.yml setfiletype yaml
au! BufRead,BufNewFile *.json setfiletype json
