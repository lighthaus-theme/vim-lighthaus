# Vim Lighthaus
A [Lighthaus](https://github.com/lighthaus-theme/lighthaus) theme for [Vim-Airline](https://github.com/vim-airline/vim-airline). <br>
A [Lighthaus](https://github.com/lighthaus-theme/lighthaus) theme for [Lightline](https://github.com/Brutuski/lightline.vim). <br>
_Lighthaus theme for vim to follow soon_ <br>
_Lighthaus theme for vim [lightline](https://github.com/itchyny/lightline.vim) to follow soon_

### Table of Contents
- [Screenshots](#screenshots)
- [Installation](#installation)
  - [Vim-Airline](#vim-airline)
  - [Lightline](#lightline)
- [Version](#version)
- [Bugs/Issues](#bugs/issues)
- [License](#license)

### Screenshots
Vim-Airline
<p align="center"><img src="https://raw.githubusercontent.com/lighthaus-theme/vim/master/vim-airline/lighthaus-airline.png"><p>

Lightline-Vim
<p align="center"><img src="https://raw.githubusercontent.com/lighthaus-theme/vim/master/lightline/lighthaus-lightline.png"><p>

Vim-Airline demo
<p align="center"><a href="https://asciinema.org/a/361711" target="_blank"><img src="https://asciinema.org/a/361711.svg" /></a></p>

Lightline demo
<p align="center"><a href="https://asciinema.org/a/363545" target="_blank"><img src="https://asciinema.org/a/363545.svg" /></a></p>


### Installation

#### Vim-Airline
**Lighthaus Theme will soon come bundled with the official Vim-Airline Themes. [Pull request](https://github.com/vim-airline/vim-airline-themes/pull/230) submitted** <br>

Install [Vim Airline](https://github.com/vim-airline/vim-airline) from the official source. <br>
Install [Vim-Airline-Themes](https://github.com/vim-airline/vim-airline-themes#vim-airline-themes--). <br>
After successfully installing and configuring vim-airline, simply add the following line to your `.vimrc`:

``` vim
let g:airline_theme='lighthaus'
```
Save and restart vim to activate to activate the theme.<br>
<br>

#### Lightline
Install [Lightline.vim](https://github.com/Brutuski/lightline.vim) from the official source.<br>
After successfully installing and configuring lightline, download [lighthaus.vim](https://github.com/lighthaus-theme/vim/blob/master/lightline/src/lighthaus.vim) and copy it into the folder `autoload/lightline/colorscheme` located inside the `~/.vim` folder. <br>

Refer to the official project [README](https://github.com/itchyny/lightline.vim) for more details. <br>

To activate the Lighthaus theme, edit the following in your `~/.vimrc`

``` vim
let g:lightline = {
      \ 'colorscheme': 'lighthaus',
      \ }
```

Save and restart vim to activate the theme.

### Version
```
v 1.0.1 vim-airline
v 1.0.0 lightline
```

_Lighthaus and all it's projects use [Semantic Versioning](https://semver.org/)._ <br/>
All changes are recorded in [CHANGELOG](https://github.com/lighthaus-theme/vim/blob/master/CHANGELOG.md)

### Bugs/Issues
Please report any bugs or issues [here](https://github.com/lighthaus-theme/vim/issues).

### License

_Copyright © 2020-Present Lighthaus Theme_<br>
_Copyright © 2020-Present Adhiraj Sirohi_<br>
_Copyright © 2020-Present Vasundhara Sharma_

<p align="left"><a href="https://github.com/Brutuski/lighthaus-vim-airline/blob/master/LICENSE"><img src="https://img.shields.io/static/v1.svg??style=flat&logo=appveyore&label=License&message=MIT&colorA=1C918A&colorB=50C16E"/></a></p>

<p align="center"><img src="https://raw.githubusercontent.com/lighthaus-theme/lighthaus/9e5cf66db03fc3e183e6cfbf7c4c04263a4f23df/ImageResources/lighthaus-border.svg"><p>

