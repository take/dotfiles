if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Basics
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/Denite.nvim')
  call dein#add('Shougo/neoyank.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/defx.nvim')
  call dein#add('tpope/vim-dispatch')
  call dein#add('tyru/open-browser.vim')
  call dein#add('autozimu/LanguageClient-neovim', {
        \ 'rev': 'next',
        \ 'build': 'bash install.sh',
        \ })

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  end

  " Linter
  call dein#add('neomake/neomake')

  " Snippets
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " Editing
  call dein#add('tpope/vim-commentary')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('tpope/vim-surround')

  " Ruby
  call dein#add('tpope/vim-endwise', { 'on_ft': ['ruby', 'eruby'] })
  call dein#add('tpope/vim-bundler', { 'on_ft': ['ruby', 'eruby'] })
  call dein#add('tpope/vim-rails', { 'on_ft': ['ruby', 'eruby'] })
  call dein#add('thoughtbot/vim-rspec', { 'on_ft': ['ruby', 'eruby'] })

  " TypeScript
  call dein#add('iwikal/typescript-vim', { 'rev': 'typescriptreact' })

  " Status/Tabline
  call dein#add('vim-airline/vim-airline')

  " Git/GitHub
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-rhubarb') " For :Gbrowse
  call dein#add('mhinz/vim-signify')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
if dein#check_install()
  call dein#install()
endif

" Basics
set clipboard+=unnamed
let mapleader=" "
set number relativenumber
set backupdir=/private/tmp
set dir=/private/tmp
set backspace=indent,eol,start
set confirm
set iskeyword+=-,_
autocmd BufWritePre * :%s/\s\+$//ge " Deleting trailing whitespaces
set colorcolumn=80
set updatetime=100
" set timeoutlen=1000 " https://stackoverflow.com/a/37884871
" set ttimeoutlen=0 " https://stackoverflow.com/a/37884871
cnoreabbrev <expr> help ((getcmdtype() is# ':'    && getcmdline() is# 'help')?('vert help'):('help')) " https://www.reddit.com/r/vim/comments/2irn8j/vertical_split_by_default/cl4sx02/
cnoreabbrev <expr> h ((getcmdtype() is# ':'    && getcmdline() is# 'h')?('vert help'):('h')) " https://www.reddit.com/r/vim/comments/2irn8j/vertical_split_by_default/cl4sx02/
set splitright " https://www.reddit.com/r/vim/comments/2irn8j/vertical_split_by_default/cl4sx02/

" Tabs
nmap <Leader>t [TABCMD]
nmap <silent>[TABCMD]e :tablast <bar> tabnew<cr>
nmap <silent>[TABCMD]c :tabclose<cr>

" Indent
vnoremap <silent> > >gv
vnoremap <silent> < <gv
set autoindent
" auto insert
set smartindent
set expandtab
if has("autocmd")
  filetype plugin on
  filetype indent on
  " when u wanna turn it off
  " autocmd FileType html filetype indent off

  autocmd FileType apache     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType conf       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType aspvbs     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType c          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType cpp        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType cs         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType sass       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType scss       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType diff       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType eruby      setlocal sw=2 sts=2 ts=2 et
  autocmd FileType jst        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType markdown   setlocal sw=2 sts=2 ts=2 et
  autocmd FileType java       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript setlocal sw=2 sts=2 ts=2 et
  autocmd FileType typescript setlocal sw=2 sts=2 ts=2 et
  autocmd FileType typescriptreact setlocal sw=2 sts=2 ts=2 et
  autocmd FileType json       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et
  autocmd FileType perl       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType php        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType python     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType ruby       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType cucumber   setlocal sw=2 sts=2 ts=2 et
  autocmd FileType puppet     setlocal sw=2 sts=2 ts=2 et
  autocmd FileType haml       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType sh         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sql        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType vb         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType vim        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType wsh        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType xhtml      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType xml        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType yaml       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType zsh        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scala      setlocal sw=2 sts=2 ts=2 et
endif
" turn off auto indent when leaving from insert mode
autocmd InsertLeave * set nopaste

" Search
nmap <c-h><c-l> :set hlsearch! hlsearch?<cr>
" hit Cap letters even when searching with non Cap
set ignorecase
" distinct Cap and none Cap when searching with Cap and none combined
set smartcase
" instant search with enter after the word
set incsearch
" stop at the end of the file
set nowrapscan

" Defx
nmap <silent><c-f><c-f> :Defx `expand('%:p:h')` -search=`expand('%:p')` -show-ignored-files<cr>
autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
        \ defx#do_action('open')
  nnoremap <silent><buffer><expr> h
        \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> j
        \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
        \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> l
        \ defx#do_action('open')
  nnoremap <silent><buffer><expr> c
        \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
        \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
        \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> E
        \ defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> P
        \ defx#do_action('open', 'pedit')
  nnoremap <silent><buffer><expr> o
        \ defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> K
        \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> <leader>N
        \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
        \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
        \ defx#do_action('toggle_columns',
        \                'mark:indent:icon:filename:type:size:time')
  " nnoremap <silent><buffer><expr> S
  " \ defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> d
        \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
        \ defx#do_action('rename')
  " nnoremap <silent><buffer><expr> !
  " \ defx#do_action('execute_command')
  " nnoremap <silent><buffer><expr> x
  " \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
        \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
        \ defx#do_action('toggle_ignored_files')
  " nnoremap <silent><buffer><expr> ;
  " \ defx#do_action('repeat')
  " nnoremap <silent><buffer><expr> ~
  " \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
        \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> s
        \ defx#do_action('toggle_select')
  nnoremap <silent><buffer><expr> *
        \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> <C-l>
        \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
        \ defx#do_action('print')
  " nnoremap <silent><buffer><expr> cd
  " \ defx#do_action('change_vim_cwd')
endfunction

" Denite
call denite#custom#option('_', 'statusline', v:false) " Disabling internal statusline
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
        \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> <leader>vs
        \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> d
        \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
        \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
        \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
        \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> s
        \ denite#do_map('toggle_select')
endfunction

nmap <silent><c-p> :Denite file/rec<cr>
nmap <silent><leader>b :Denite buffer<cr>
nmap <silent><leader>m :Denite file_mru<cr>
nmap <silent><leader>f :Denite grep -post-action=open<cr>
nmap <silent><leader>y :Denite neoyank<cr>
nmap <silent><leader>o :Denite outline<cr>
call denite#custom#option('_', 'max_dynamic_update_candidates', 200000)
call denite#custom#option('_', 'start_filter', 'true')
call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nogroup', '-g', ''])
call denite#custom#var('grep', {
      \ 'command': ['ag'],
      \ 'default_opts': [],
      \ 'recursive_opts': [],
      \ 'pattern_opt': [],
      \ 'final_opts': [],
      \ })
call denite#custom#source('grep', 'args', ['', '', '!']) " intereactive mode
call denite#custom#source('grep', 'converters', ['converter/abbr_word']) " narrow by path in grep source.

" grep selected text ref: https://qiita.com/aratana_tamutomo/items/e36fb724c604bdd19756
function! g:GetVisualWord() abort
  let word = getline("'<")[getpos("'<")[2] - 1:getpos("'>")[2] - 1]
  return word
endfunction
function! g:GetVisualWordEscape() abort
  let word = substitute(GetVisualWord(), '\\', '\\\\', 'g')
  let word = substitute(word, '[.?*+^$|()[\]]', '\\\0', 'g')
  return word
endfunction
xnoremap <silent><leader>f :Denite grep:::`GetVisualWordEscape()` -post-action=open<cr>

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = {
      \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
      \}
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'ruby': ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::'],
      \})

" NeoSnippet
imap <c-f> <Plug>(neosnippet_expand_or_jump)
let g:neosnippet#snippets_directory='~/projects/dotfiles/.vim/snippet/'

" OpenBroser
nmap gx <plug>(openbrowser-smart-search)
vmap gx <plug>(openbrowser-smart-search)

" airline
" TODO: Try it out
" let g:airline#extensions#languageclient#enabled = 1

" RSpec
let g:rspec_command = "Dispatch bundle exec rspec {spec}"
map <leader>rc :call RunCurrentSpecFile()<CR>
map <leader>rn :call RunNearestSpec()<CR>
map <leader>rl :call RunLastSpec()<CR>
map <leader>ra :call RunAllSpecs()<CR>

" Neomake
call neomake#configure#automake('nrwi', 500)
" let g:neomake_open_list = 2
let g:neomake_typescript_lint_maker = {
      \ 'exe': 'tsc',
      \ 'args': ['--skipLibCheck'],
      \ }
