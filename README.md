# Vim Railscasts Colorscheme

A color scheme based on the [RailsCasts](http://railscasts.com) TextMate theme 
with decent support for both GUI and terminal.


## Installation
You can choose between 3 different ways to install it:

### Pathogen

Install [Pathogen](https://github.com/tpope/vim-pathogen) and then add a 
git submodule for your plugin:

```sh
$ cd ~/.vim
$ git submodule add git@github.com:jpo/vim-railscasts-theme.git bundle/railscasts-theme
```

### Vundle

Install [Vundle](https://github.com/gmarik/Vundle.vim) and then add this theme
as a plugin to your ```.vimrc```.

```vim
Plugin 'jpo/vim-railscasts-theme'
```

### Manually

Copy ```railscasts.vim``` into ```~/.vim/colors/``` (Unix) or 
```vimfiles/colors/``` (Windows).


## Screenshots

### GUI :
<img src="https://raw.github.com/jpo/vim-railscasts-theme/master/screenshot_gui.jpg" />

### Terminal with 256 colors :
<img src="https://raw.github.com/jpo/vim-railscasts-theme/master/screenshot_256.jpg" />
