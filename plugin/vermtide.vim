"    Filename: plugin/vermtide.vim
"  Maintainer: ManuelBlanc <https://github.com/ManuelBlanc>
"     License: MIT

if exists("g:vermtide_loaded")
  finish
endif
let g:vermtide_loaded = 1


command VTOpenLog    :call vermtide#open_log()
command VTLaunchGame :call vermtide#launch_game()

