# vermtide.vim

Vim plugin to easen Vermintide mod development.

## Features

Adds two new ex commands:

+ `:VTOpenLog` -- Opens the latest log (with syntax highlighting) at the first error.
+ `:VTLaunchGame` -- Launches the game (Vermintide2) through Steam.


## Configuration

+ The location of the log files can be set through the `g:vermtide_logs_path` global variable.


## Installation with [vim-plug](https://github.com/junegunn/vim-plug)

1. Add the following configuration to your .vimrc

   ```vim
   Plug 'ManuelBlanc/vermtide.vim'
   ```

2. Install with `:PlugInstall`


## Authors

+ Manuel Blanc <https://github.com/ManuelBlanc>


## License

MIT License. See [LICENSE](./LICENSE) file.
