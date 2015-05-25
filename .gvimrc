" Use the Solarized Dark theme
set background=dark
colorscheme solarized
" Use 14pt Monaco
set guifont=Monaco:h14
" Don’t blink cursor in normal mode
set guicursor=n:blinkon0
" Better line-height
set linespace=8

if has("gui_running")
    winpos 50 50
    set lines=50
    set columns=120
endif
