"    Filename: autoload/vermtide.vim
"  Maintainer: ManuelBlanc <https://github.com/ManuelBlanc>
"     License: MIT

let s:GLOB_PATH = $APPDATA . '/Fatshark/Vermintide 2/console_logs'

" The largest element of a non-empty list
function! vermtide#maximum(list)
  let maximal = a:list[0]
  for item in a:list
    if item > maximal
      let maximal = item
    endif
  endfor
  return maximal
endfunction

" Open the latest log file
function! vermtide#open_log()
  let log_list = glob(s:GLOB_PATH . '/*.log', 1, 1)
  let latest_log = vermtide#maximum(log_list)
  execute 'edit +/Lua\ Error ' . latest_log
  setlocal bufhidden=delete
  setlocal filetype=vtlog
endfunction

