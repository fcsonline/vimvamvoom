# Vim, Vam, Voom

Vim, Vam, Voom is Emili Parreño's vim distribution.

## Usage

    git clone git://github.com/eparreno/vimvamvoom.git ~/.vim

Then "cd" into the repo and run this to update submodules:

    git submodule update --init

Link vimrc, and gvimrc

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

### Updating to the latest version

    cd .vim
    git pull
    git submodule sync
    git submodule update --init --recursive

### Help tags

At first usage of vim execute:

    :Helptags

to generate tags. This will make the plugins documentations available upon :help

## Customization

Create ~/.vimrc.local and ~/.gvimrc.local for any local customizations.

    echo color desert  > ~/.vimrc.local
    echo color molokai > ~/.gvimrc.local

## Base Customizations

* Leader: ","
* Line numbers
* Ruler
* Show git branch in status line
* Soft 2-space tabs, and default hard tabs to 2 spaces
* Highlight unwanted spaces

## Mappings

* Cmd+Option+(left, right, up, down) switch viewports
* Cmd+(1-9) switch tabs
* Cmd+e Open a terminal
* leader+=  Adjust viewports to the same size
* leader+t opens Command-T

## Bundled Plugins

### Fugitive

support for Git, adding convenient commands such as :Gstatus, :Gread, :Gmove, :Gdiff, :Glog etc<br/>
https://github.com/tpope/vim-fugitive.git

### Nedtree

project navigator that you can open with leader+n<br/>
http://www.vim.org/scripts/script.php?script_id=1658

### NERD_commenter

support to comment lines of code<br/>
[count]+leader+cc<br/>
Comment out the current line or text selected in visual mode<br/>
[count]+leader+c+space<br/>
Toggles the comment state of the selected line(s)<br/>

http://www.vim.org/scripts/script.php?script_id=1218<br/>
https://github.com/scrooloose/nerdcommenter<br/>

### Ack

type :Ack [search pattern] to search your entire project<br/>
https://github.com/mileszs/ack.vim

### Align

align blocks of text using equal sign, make comment boxes and more<br/>
leader+cc and leader+c+space<br/>
http://mysite.verizon.net/astronaut/vim/align.html#Examples<br/>
https://github.com/tsaleh/vim-align.git<br/>


### Rails

Rails support for vim
http://www.vim.org/scripts/script.php?script_id=1567
https://github.com/tpope/vim-rails

### supertab

pseudo auto-complete with tab
http://www.vim.org/scripts/script.php?script_id=1643
https://github.com/ervandew/supertab

### Endwise

support to close Ruby blocks such as ‘if’, ‘do’ with ‘end’
http://www.vim.org/scripts/script.php?script_id=2386
https://github.com/tpope/vim-endwise

### vim-ruby

https://github.com/vim-ruby/vim-ruby/wiki
https://github.com/vim-ruby/vim-ruby

### ConqueTerm

Command+e Displays a terminal window
https://github.com/rson/vim-conque.git
http://code.google.com/p/conque/

### Syntastic

checks for syntax errors in many languages
http://www.vim.org/scripts/script.php?script_id=2736
https://github.com/scrooloose/syntastic/

### Snipmate

TextMate's snippets features in Vim<br/>
http://www.vim.org/scripts/script.php?script_id=2540

### Command-T

The Command-T plug-in provides an extremely fast, intuitive mechanism for opening files with 
a minimal number of keystrokes. It's named "Command-T" because it is inspired by the "Go to File" 
window bound to Command-T in TextMate. 

http://www.vim.org/scripts/script.php?script_id=3025

## Contribute

Contributions are welcomed. You can send your pull requests to improve this vim distribution

## Credits

Emili Parreño under MIT License<br/>
Vim, Vam, Voom is based on various vim distributions and vim config files.<br/>
Thanks to Fabio Akita, Martin Grenfell, Carl Lerche, Yehuda Katz, Joe Ferris, Tim Pope and many others.
