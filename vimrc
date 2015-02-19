""gvim 設定ファイル
""set 何々でオン、set no何々でオフ

"set nocompatible "vi互換設定オフ


" 分割した設定ファイルをすべて読み込む
set runtimepath+=~/.vim/
runtime! userautoload/*.vim

" vimrc,gvimrcを変更したら自動で再読み込み
augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

set number "行番号表示
set mouse=a "マウス操作オン
set ruler "画面右下カーソル位置表示

set laststatus=2 "画面最下部のステータス行を常に表示
set noswapfile "スワップファイルを使わない
set title "ウィンドウのタイトルバーにファイルパス等を表示する
set showcmd "入力中のコマンドを表示

set cmdheight=2 "メッセージ表示欄を三行確保
set noshowmode "現在のモードを表示しない(ステータスラインに表示するため)
set showmatch "対応括弧を強調表示
set tabstop=2 "タブを空白２つ分に
set list "不可視文字の表示
set listchars=tab:>.,trail:~,eol:@ "不可視文字の表示設定

"バックスペースを行頭で押すと行同士の連結が可能に
"オートインデントモードのインデント削除可能に
set backspace=start,eol,indent
"オートインデントを有効に
set autoindent
set smartindent  " 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする。
set cindent      " Cプログラムファイルの自動インデントを始める

"b [Backspace] 対象モード:ノーマル&ビジュアル
"s [Space]     対象モード:ノーマル&ビジュアル
"< [←]        対象モード:ノーマル&ビジュアル
"> [→]        対象モード:ノーマル&ビジュアル
"[ [←]        対象モード:挿入&置換
"] [→]        対象モード:挿入&置換
"~ ~           対象モード:ノーマルモード
set whichwrap=b,s,[,],,~

"インクリメンタル検索無効化
set noincsearch

"入力補完機能
"候補が２つ以上あるときにすべての候補を補完対象にして、
"最初に並ぶ候補を補完対象に
set wildmenu wildmode=list:full

"シンタックスハイライトをオンにする
syntax on
"検索キーワードのハイライト表示オフ
set nohlsearch
"カーソル行を強調表示
set cursorline

""カラースキーム設定
colorscheme hybrid
""フォント設定
set gfn=Migu_1M:h12

scriptencoding=utf-8
set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8

""ショートカットキー
"ZQ(保存しないで閉じる)をCtrl-qに割り当て
nnoremap <C-q> ZQ
"Q(exモードに入る)を無効化
nnoremap Q <Nop>
"タブをtabで追加
nmap <Tab> :tabnew<CR>
"undoをCtrl-xCtrl-zに割り当て
nmap <C-x>a :undo<CR>
"redoをCtrl-xCtrl-aに割り当て
nmap <C-x><C-a> :redo<CR>
"ZZ(保存して閉じる)をCtrl-zに割り当て
nnoremap <C-z> ZZ
"writeをCtrl-xCtrl-sに割り当て
map <C-s> :write<CR>
"設定ファイルをF1で開く
map <F1> :e ~/_gvimrc<CR>
"ファイルを選んで保存
nmap <C-x><C-s> :browse confirm saveas<CR>
"ファイルを選んで開く
nmap <C-x><C-b> :browse confirm e<CR>
"PHPコンパイラモード
nmap <C-x><C-p> :compiler php<CR>

" Plugin key-mappings.  " <C-k>でsnippetの展開
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
