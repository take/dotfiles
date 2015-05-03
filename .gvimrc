source ~/.vimrc

if has('gui_macvim')
  " set transparency=10
	set antialias
  set guioptions-=g
  set guioptions-=m
  set guioptions-=e
	set guioptions-=t	" stop showing tools bar
	set guioptions-=r	" stop showing right scrolling bar
	set guioptions-=R
	set guioptions-=l	" stop showing left scrolling bar
	set guioptions-=L

  set guicursor=a:blinkon0

  set guifont=Source\ Code\ Pro\ for\ Powerline\:h13

	set imdisable		" turn off IME

	" auto full screen mode
	set fuoptions=maxvert,maxhorz
  	autocmd GUIEnter * set fullscreen 
endif
