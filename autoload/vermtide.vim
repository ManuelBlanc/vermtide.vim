"    Filename: autoload/vermtide.vim
"  Maintainer: ManuelBlanc <https://github.com/ManuelBlanc>
"     License: MIT

let g:vermtide_logs_path = $APPDATA . '/Fatshark/Vermintide 2/console_logs'

" maximum() Get the largest element of a non-empty list {{{1
function! vermtide#maximum(list)
  let maximal = a:list[0]
  for item in a:list
    if item > maximal
      let maximal = item
    endif
  endfor
  return maximal
endfunction


" open_log() Open the latest log file {{{1
function! vermtide#open_log()
  let log_list = glob(g:vermtide_logs_path . '/*.log', 1, 1)
  if empty(log_list)
    return
  endif
  let latest_log = vermtide#maximum(log_list)
  execute 'edit +/Lua\ Error' latest_log
  setlocal bufhidden=delete
  setlocal filetype=vtlog
endfunction


" launch_game() Launch the game from Steam {{{1
function! vermtide#launch_game()
  call system('start steam://run/552500')
endfunction

