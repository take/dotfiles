" moving between windows
" nmap fj <c-w>j
" nmap fk <c-w>k
" nmap fh <c-w>h
" nmap fl <c-w>l

" avoiding to stop cursor at the end or the start of the line
set ww=b,s,h,l,~,<,>,[,]

" record a jump when its like '2j' pasted from http://stackoverflow.com/a/14940796/1446551
:nmap <silent> k :<c-u>execute 'normal!' (v:count > 1 ? "m'" . v:count : '') . 'k'<cr>
:nmap <silent> j :<c-u>execute 'normal!' (v:count > 1 ? "m'" . v:count : '') . 'j'<cr>
