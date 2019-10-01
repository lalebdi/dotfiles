#!/bin/bash

# installs useful programs on system
# assumes you are using Linux Mint
# RECOMMENDATION:
#   read document and type these commands yourself
#   especially if you are using one of the latest Linux distributions.
#   Things may have changed on the internet between now and your runtime.

set -e

#######################################################################
# Alternative package managers
#######################################################################
sudo apt install snapd

#######################################################################
# Man pages for Linux Systems Programming
#######################################################################
sudo apt install manpages-dev manpages-posix-dev
sudo apt install libx11-doc

# to obtain 'unbuffer', "disables the output buffering that occurs when program
# output is redirected from non-interactive programs."
# tl;dr this makes system
# copy / url opening operations work when using neovim as a man pager
sudo apt install expect-dev

#######################################################################
# Install packages
#######################################################################
sudo apt install stow

sudo apt install shellcheck

#######################################################################
# Typing
#######################################################################
sudo apt install typespeed

#######################################################################
# Offline dictionary
#######################################################################
sudo apt install dict
sudo apt dict-gcide dict-moby-thesaurus

#######################################################################
# keepass
#######################################################################
# sudo apt install keepass2
# sudo add-apt-repository ppa:dlech/keepass2-plugins
# sudo apt update
# sudo apt install keepass2-plugin-application-indicator
# Ignore above, install this: https://keeweb.info/

#######################################################################
# Build, version control, and getting code for elsewhere
#######################################################################
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git
sudo apt install build-essential
sudo apt install curl

# Tool to respond to file changes
sudo apt install entr

#######################################################################
# Copy functionality
#######################################################################
sudo apt install xsel xclip

#######################################################################
# Fun stuff
#######################################################################
sudo apt install fortune cowsay bsdgames bsdgames-nonfree

#######################################################################
# Install more C Stuff
#######################################################################
sudo apt install cmake llvm-6.0 llvm-6.0-dev libclang-6.0-dev

#######################################################################
# Apache stuff (htpasswd)
#######################################################################
sudo apt install apache2-utils

#######################################################################
# NeoVim
#######################################################################
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim
sudo apt install python-dev python-pip python3-dev python3-pip

# Install minpac (neovim, for me, references vim)
git clone https://github.com/k-takata/minpac.git \
  ~/.vim/pack/minpac/opt/minpac

# for ctags
npm install -g jsctags
sudo apt install -y php

#######################################################################
# Vim dependencies
#######################################################################
sudo apt install exuberant-ctags

# Show key presses in the terminal
sudo apt install screenkey

#######################################################################
# Fonts
#######################################################################

# Download relevant nerd fonts from here
# https://www.nerdfonts.com/font-downloads

# 1.) Download a Nerd Font
# 2.) Unzip and copy to ~/.fonts
# 3.) Run the command fc-cache -fv to manually rebuild the font cache

# Installs the "Hack" font
sudo apt install fonts-hack-ttf

#######################################################################
# Tmux - install from source to get latest version
#######################################################################
sudo apt remove tmux
sudo apt install autoconf automake pkg-config libevent-dev
cd ~/src/lib
git clone git@github.com:tmux/tmux.git
cd tmux
sh autogen.sh
./configure
make
sudo make install

#######################################################################
# System monitoring
#######################################################################
sudo apt install htop tree

#######################################################################
# Python 3
#######################################################################
sudo apt install python3-dev
sudo apt install python3-virtualenv

# enables pyenv to build with tkinter support
sudo apt install tk-dev

#######################################################################
# MySQL
#######################################################################
sudo apt install libmysqlclient-dev

#######################################################################
# Wine
#######################################################################
# https://wiki.winehq.org/Ubuntu
sudo apt install libasound2-plugins:i386
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update
sudo apt install --install-recommends winehq-stable

#######################################################################
# Latex
#######################################################################
sudo apt install texlive-full

# getting tlmgr (the texlive package manager) to work
sudo apt install xzdec

# font used for "metropolis" theme
sudo apt install fonts-firacode

#######################################################################
# Vagrant
#######################################################################

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | \
  sudo apt-key add -

echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian bionic contrib" | \
  sudo tee /etc/apt/sources.list.d/virtualbox.list

sudo apt update
sudo apt install virtualbox-5.2

wget -O ~/Downloads/vagrant.deb \
  https://releases.hashicorp.com/vagrant/2.1.2/vagrant_2.1.2_x86_64.deb

sudo apt install ~/Downloads/vagrant.deb


#######################################################################
# Diagramming
#######################################################################
sudo apt install graphviz
sudo apt install gthumb

# plantuml
if [ ! -d ~/java ]; then
  mkdir ~/java
fi
wget -O ~/java/plantuml.jar \
  http://sourceforge.net/projects/plantuml/files/plantuml.jar/download
cd ~/bin

# ~/bin/plantuml
# #!/bin/bash
# java -jar ~/java/plantuml.jar ${@}

#######################################################################
# PDF Viewer with vi bindings
#######################################################################
sudo apt install zathura

#######################################################################
# Pandoc
#######################################################################
# the available version in software repository is not latest
# build using the provided debian package under pandoc releases
# https://github.com/jgm/pandoc/releases
sudo apt install librsvg2-bin

#######################################################################
# Hovercraft! (an impress generator)
# both steps are included to have the latest version AND the man page
#######################################################################
sudo apt install hovercraft
pip install hovercraft

#######################################################################
# Writing
#######################################################################
npm install -g write-good

wget -O ~/Downloads/LanguageTool-stable.zip \
  https://www.languagetool.org/download/LanguageTool-stable.zip

wget -O ~/Downloads/ngrams-en-20150817.zip \
  https://languagetool.org/download/ngram-data/ngrams-en-20150817.zip

# ~/bin/languagetool
# java -jar ~/java/LanguageTool-4.5/languagetool-commandline.jar \
#   --disable EN_QUOTES \
#   --language en \
#   --languagemodel ~/Data/ngrams \
#   ${@}

#######################################################################
# Language Servers
#######################################################################

# Live list
https://langserver.org/

# clangd
https://clang.llvm.org/extra/clangd/Installation.html#installing-clangd

#######################################################################
# Java Language Server
#######################################################################
cd ~/java
git clone git@github.com:georgewfraser/java-language-server.git
cd java-language-server
./scripts/link_mac.sh

#######################################################################
# Ncurses
#######################################################################
sudo apt install libncurses5 libncurses5-dev libncursesw5
sudo apt install ncurses-doc

#######################################################################
# Rust packages / rustup components
#######################################################################

# rust toolchains
rustup component add cargo
rustup component add clippy
rustup component add rls
rustup component add rust-analysis
rustup component add rust-docs
rustup component add rust-src
rustup component add rustfmt

# cargo libraries
cargo install bat
cargo install fd-find
cargo install racer
cargo install ripgrep

# supports the following: cargo add; cargo rm ;cargo upgrade
cargo install cargo-edit

#######################################################################
# Go programs
#######################################################################
# license: license -year=2013 -name=Alice mit
go get -u github.com/nishanths/license

#######################################################################
# kdenlive (along with necessary plugins)
#######################################################################
sudo add-apt-repository ppa:kdenlive/kdenlive-stable
sudo apt update
sudo apt install kdenlive
sudo apt install frei0r-plugins frei0r-plugins-dev frei0r-plugins-doc
sudo apt install dvdauthor

#######################################################################
# ffmpeg2 (ubunu 16.04-specific workaround for video stabilization)
#######################################################################
sudo add-apt-repository ppa:mc3man/ffmpeg-test
sudo apt update
sudo apt install ffmpeg-static
hash -r

#######################################################################
# peek: the gif-creation program
#######################################################################
sudo add-apt-repository ppa:peek-developers/stable
sudo apt update
sudo apt install peek

#######################################################################
# Alacritty
#######################################################################
cd src/lib
git clone git@github.com:eendroroy/alacritty-theme.git
git clone git@github.com:toggle-corp/alacritty-colorscheme.git
ln -s $PWD/alacritty-colorscheme/alacritty-colorscheme $HOME/bin/

#######################################################################
# zplug
#######################################################################
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

#######################################################################
# tpm: Tmux Plugin Manager
#######################################################################
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#######################################################################
# Vim tagbar
#######################################################################
cd ~/src/lib
git clone https://github.com/jszakmeister/rst2ctags

#######################################################################
# previewing RST files
# don't recommend using sudo with this one
#######################################################################
pip install restview

#######################################################################
# pdfpc
#######################################################################
sudo apt install pdf-presenter-console

#######################################################################
# Inkscape (a great svg drawing program)
#######################################################################
sudo snap install inkscape

#######################################################################
# zshell
#######################################################################
sudo apt install zsh
# without sudo (makes zsh default shell):
chsh -s "$(which zsh)"

#######################################################################
# Jenkins
#######################################################################
wget -O ~/java/jenkins.war \
  http://mirrors.jenkins.io/war-stable/latest/jenkins.war
cd ~/bin

# ~/bin/jenkins
# #!/bin/bash
# java -jar ~/java/jenkins.war ${@}

#######################################################################
# Less
#######################################################################
sudo apt remove less
# Download latest recommended version from:
# www.greenwoodsoftware.com/less/download.html
# Follow installation instructions to compile from source

#######################################################################
# ASDF
#######################################################################

# install dependencies
sudo apt install \
  automake autoconf libreadline-dev \
  libncurses-dev libssl-dev libyaml-dev \
  libxslt-dev libffi-dev libtool unixodbc-dev \
  unzip curl

# Download (verify version)
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.4

# asdf-update: update to latest version
# asdf reshim <plugin>: makes newly-installed executables available
