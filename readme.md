# vim-xo

> Vim plugin for [XO](https://github.com/xojs/xo) that provides [Syntastic](https://github.com/vim-syntastic/syntastic) integration


## Install

### Using [Pathogen](https://github.com/tpope/vim-pathogen)

```
$ git clone --depth=1 https://github.com/xojs/vim-xo ~/.vim/bundle/vim-xo
```

### Using [Vundle](https://github.com/VundleVim/Vundle.vim)

1. Add `Plugin 'xojs/vim-xo'` to `~/.vimrc`
2. `:PluginInstall` or `$ vim +PluginInstall +qall`

### Using [NeoBundle](https://github.com/Shougo/neobundle.vim)

1. Add `NeoBundle 'xojs/vim-xo'` to `~/.vimrc`
2. Re-open vim or execute `:source ~/.vimrc`

### Using [vim-plug](https://github.com/junegunn/vim-plug)

1. Add `Plug 'xojs/vim-xo'` to `~/.vimrc`
2. `:PlugInstall` or `$ vim +PlugInstall +qall`


## Features

### Linting with [Syntastic](https://github.com/vim-syntastic/syntastic)

This plugin automatically registers XO as a syntax checker with Syntastic.

To activate XO, put the following in your `.vimrc` file:

```vim
let g:syntastic_javascript_checkers = ['xo']
```

See the Syntastic [docs](https://github.com/vim-syntastic/syntastic/blob/master/doc/syntastic.txt) for more.

### Formatting with [vim-autoformat](https://github.com/Chiel92/vim-autoformat)

Formatting with `vim-autoformat` will *just work* (since this plugin uses `npx xo`).

You do not need to install `xo` globally (and if it is installed globally, then please remove it as [global installation is deprecated](https://github.com/xojs/xo/releases/tag/v0.41.0)).


## License

MIT © [Sindre Sorhus](https://sindresorhus.com)
