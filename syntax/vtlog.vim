"    Filename: syntax/vtlog.vim
"  Maintainer: ManuelBlanc <https://github.com/ManuelBlanc>
"     License: MIT

if exists('b:current_syntax')
  finish
endif

syn sync minlines=100

" Highlight lines that are probably errors or warnings
syntax match VTLogError   #\c.*\Herror.*#   contains=ALL
syntax match VTLogWarning #\c.*\Hwarning.*# contains=ALL

" Match entries
syntax region VTLogBlock matchgroup=VTLogBlockDelimiter start=#<<\z([^>]*\)>># end=#<</\z1>># fold transparent
syntax region VTLogLuaError matchgroup=VTLogBlockDelimiter start=#<<Lua Error>># end=#<</Lua Error>># fold contains=VTLogPath
syntax region VTLogLuaStack matchgroup=VTLogBlockDelimiter start=#<<Lua Stack>># end=#<</Lua Stack>># fold contains=VTLogModule,VTLogPath

" Basic log components
syntax match VTLogDate   #^\(\d\{2}:\)\{2}\d\{2}\.\d\{3}# display
syntax match VTLogModule #\[\w\+\]# display
syntax match VTLogPath   #\h\+/\h\S\+# display
syntax match VTLogPath   #[CD]:\\.*\.\h\+# display

" Basic Lua type names and constants
syntax keyword VTLuaConstant true false nil
syntax match   VTLuaType     #(\(boolean\|number\|string\|table\))#

" URLs
syntax match VTLogURL #https\=://\S\+#

" Link custom classes to common ones
highlight default link VTLogDate              Constant
highlight default link VTLogEntry             NONE
highlight default link VTLogLabel             Type
highlight default link VTLogBlock             NONE
highlight default link VTLogBlockDelimiter    PreCondit
highlight default link VTLogLuaError          ErrorMsg
highlight default link VTLogLuaErrorDelimiter PreCondit
highlight default link VTLogModule            Identifier
highlight default link VTLogPath              Underlined
highlight default link VTLogURL               Underlined
highlight default link VTLuaConstant          Constant
highlight default link VTLuaType              Type
highlight default link VTLogError             ErrorMsg
highlight default link VTLogWarning           WarningMsg


" Toolbox {{{1
"syntax region VTLogEntry matchgroup=VTLogDate start=#^\(\d\{2}:\)\{2}\d\{2}\.\d\{3}# end=#^\(\d\{2}:\)\{2}\d\{2}\.\d\{3}#me=s-1,re=s-1 contains=ALL

