# vim-xo

> Vim plugin for [XO](https://github.com/sindresorhus/xo) that provides [Syntastic](https://github.com/vim-syntastic/syntastic) integration


## Install

### Using [Pathogen](https://github.com/tpope/vim-pathogen)

```
$ git clone --depth=1 https://github.com/sindresorhus/vim-xo ~/.vim/bundle/vim-xo
```

### Using [Vundle](https://github.com/VundleVim/Vundle.vim)

1. Add `Plugin 'sindresorhus/vim-xo'` to `~/.vimrc`
2. `:PluginInstall` or `$ vim +PluginInstall +qall`

### Using [NeoBundle](https://github.com/Shougo/neobundle.vim)

1. Add `NeoBundle 'sindresorhus/vim-xo'` to `~/.vimrc`
2. Re-open vim or execute `:source ~/.vimrc`

### Using [vim-plug](https://github.com/junegunn/vim-plug)

1. Add `Plug 'sindresorhus/vim-xo'` to `~/.vimrc`
2. `:PlugInstall` or `$ vim +PlugInstall +qall`


## Features

### Linting with [Syntastic](https://github.com/vim-syntastic/syntastic)

This plugin automatically registers XO as a syntax checker with Syntastic.

To activate XO, put the following in your `.vimrc` file:

```vim
let g:syntastic_javascript_checkers = ['xo']
```

See the Syntastic [docs](https://github.com/vim-syntastic/syntastic/blob/master/doc/syntastic.txt) for more.


## Tip

You can also use [vim-autoformat](https://github.com/Chiel92/vim-autoformat) to format your code with XO, using the following settings in your `.vimrc` file:

```vim
let g:formatdef_xo = '"xo --fix --stdin"'
let g:formatters_javascript = ['xo']
```


## License

MIT © [Sindre Sorhus](https://sindresorhus.com)
