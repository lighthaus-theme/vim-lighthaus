<p align="center"><img src="https://raw.githubusercontent.com/lighthaus-theme/vim/0f2eeb2b9caa99a22487b84f54704ba5a9650c1a/assets/vim-badge.svg" width="230"><p>


<p align="center">
   <a href="https://www.buymeacoffee.com/asirohi"><img alt="Status" src="https://raw.githubusercontent.com/lighthaus-theme/lighthaus-theme/3cc9fd60c69da89f56721ca9048f38709b3dc878/BuyUsACoffee.svg" width="150" height="23"></a>
</p>

<h2 align="center">Vim Lighthaus</h2>

A [Lighthaus](https://github.com/lighthaus-theme/lighthaus) theme for [Vim](https://github.com/vim/vim), [Vim-Airline](https://github.com/vim-airline/vim-airline) and [Lightline](https://github.com/Brutuski/lightline.vim).


### Table of Contents

- [Introduction](#introuction)
- [Screenshots](#screenshots)
- [Installation](#installation)
  - [Vim](#vim)
  - [Vim-Airline](#vim-airline)
  - [Lightline](#lightline)
- [Options](#options)
- [Options](#options)
- [Contributing](#contributing)
- [Version](#version)
- [Bugs/Issues](#bugs/issues)
- [License](#license)

### Introduction

Lighthaus theme for vim makes it easy to view and edit files.
Lighthaus aims to not flood your screen with colors but instead let's you focus on the work with relevant colors aiding in your workflow.
It comes with support for the following popular plugins:
- [ale](https://github.com/dense-analysis/ale)
- [beacon](https://github.com/DanilaMihailov/beacon.nvim)
- [coc](https://github.com/neoclide/coc.nvim)
- [fzf](https://github.com/junegunn/fzf)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
- [vim-plug](https://github.com/junegunn/vim-plug)
- [vim-signature](https://github.com/kshenoy/vim-signature)
- [vim-signify](https://github.com/mhinz/vim-signify)
- [vim-startify](https://github.com/mhinz/vim-startify)
- [vimwiki](https://github.com/vimwiki/vimwiki)

### Screenshots

Vim
<p align="center"><img src="https://github.com/lighthaus-theme/vim/blob/master/assets/vim1.png?raw=true"><p>
<p align="center"><img src="https://github.com/lighthaus-theme/vim/blob/master/assets/vim2.png?raw=true"><p>
<p align="center"><img src="https://github.com/lighthaus-theme/vim/blob/master/assets/vim3.png?raw=true"><p>

Vim-Airline
<p align="center"><img src="https://github.com/lighthaus-theme/vim-lighthaus/blob/master/assets/airline.png?raw=true"><p>

Lightline-Vim
<p align="center"><img src="https://github.com/lighthaus-theme/vim-lighthaus/blob/master/assets/lightline.png?raw=true"><p>

Vim-Airline demo
<p align="center"><img src="https://raw.githubusercontent.com/lighthaus-theme/demo-assets/main/assets/airline.gif"><p>
Lightline demo
<p align="center"><img src="https://raw.githubusercontent.com/lighthaus-theme/demo-assets/main/assets/lightline.gif"><p>


### Installation

#### Vim

Lighthaus theme for vim can be installed using any vim plugin manager such as [vim-pathogen](https://github.com/tpope/vim-pathogen), [vundle](https://github.com/VundleVim/Vundle.vim) and [vim-plug](https://github.com/junegunn/vim-plug).

Installation instruction for the plugin managers can be found on their own official pages.
For Installation with [vim-plug](https://github.com/junegunn/vim-plug):
- Add `Plug 'lighthaus-theme/vim-lighthaus'` to the _vim-plug's_ installation function in your `vimrc`
- Run `:PlugInstall` inside vim
- Activate the theme by adding `colorscheme lighthaus` in your `vimrc`
- Restart vim or run `:source ~/.vimrc` to reload the config.

#### Vim-Airline

Lighthaus theme comes bundled with vim-airline.
Install [Vim Airline](https://github.com/vim-airline/vim-airline) from the official source. <br>
Install [Vim-Airline-Themes](https://github.com/vim-airline/vim-airline-themes#vim-airline-themes--). <br>
After successfully installing and configuring vim-airline, add the following line to your `.vimrc`:

``` vim
let g:airline_theme='lighthaus'
```
Save and restart vim to activate the theme.<br>

_To display `git` information in your status bar, you need additional plugins, such as [vim-fugitive](https://github.com/tpope/vim-fugitive)._


#### Lightline

Install [Lightline.vim](https://github.com/Brutuski/lightline.vim) from the official source.<br>

To activate the Lighthaus theme, add the following in your `~/.vimrc`

``` vim
let g:lightline = {
      \ 'colorscheme': 'lighthaus',
      \ }
```
Save and restart vim to activate the theme.

### Options

**Options have to be set before `colorscheme lighthaus` line in your `vimrc` !**
- Vertical Split Line Color can be changed depending on preference.
To have a brighter and more prominent vertical split line, set the following option to `1` in your `vimrc`. _Default is dark_
    ```vim
    let g:lighthaus_vsplit_line_light = 1
    ```
    <p align="center"><img src="https://github.com/lighthaus-theme/vim-lighthaus/blob/master/assets/vim_vsplit.gif?raw=true"><p>

### Contributing

Check out [CONTRIBUTING](https://github.com/lighthaus-theme/lighthaus/blob/master/CONTRIBUTING.md). 

Pull Request Template can be found [here](https://github.com/lighthaus-theme/lighthaus/blob/master/PULL_REQUEST_TEMPLATE.md) and Issues and Bugs Template [here](https://github.com/lighthaus-theme/lighthaus/blob/master/ISSUE_TEMPLATE.md).

### Version

```vim
v 1.5.3 vim
v 1.0.2 vim-airline
v 1.0.0 lightline
```

_Lighthaus and all it's projects use [Semantic Versioning](https://semver.org/)._ <br/>
All changes are recorded in [CHANGELOG](https://github.com/lighthaus-theme/vim/blob/master/CHANGELOG.md)

### Bugs/Issues
Please report any bugs or issues [here](https://github.com/lighthaus-theme/vim/issues). Issues and Bugs Template can be found [here](https://github.com/lighthaus-theme/lighthaus/blob/master/ISSUE_TEMPLATE.md).

### License

_Copyright © 2020-Present Lighthaus Theme_<br>
_Copyright © 2020-Present Adhiraj Sirohi_<br>
_Copyright © 2020-Present Vasundhara Sharma_

<p align="left"><a href="https://github.com/Brutuski/lighthaus-vim-airline/blob/master/LICENSE"><img src="https://img.shields.io/static/v1.svg??style=flat&logo=appveyore&label=License&message=MIT&colorA=1C918A&colorB=50C16E"/></a></p>

<p align="center"><img src="https://raw.githubusercontent.com/lighthaus-theme/lighthaus/9e5cf66db03fc3e183e6cfbf7c4c04263a4f23df/ImageResources/lighthaus-border.svg"><p>
