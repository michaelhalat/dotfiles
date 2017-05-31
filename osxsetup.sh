#!/usr/bin/env bash
set -e # exit on any nonzero command

################################################################################
######################### Command Line Tools ###################################
################################################################################



################################################################################
######################### Cleanup Default Files ################################
################################################################################

if [ -f "$HOME/.profile" ]; then
    rm "$HOME/.profile"
fi
if [ -f "$HOME/.bashrc" ]; then
    rm "$HOME/.bashrc"
fi
if [ -f "$HOME/.bash_profile" ]; then
    rm "$HOME/.bash_profile"
fi
if [ -f "$HOME/.localrc" ]; then
    rm "$HOME/.localrc"
fi
if [ -f "$HOME/.bash_logout" ]; then
    rm "$HOME/.bash_logout"
fi
if [ -f "$HOME/.viminfo" ]; then
    rm "$HOME/.viminfo"
fi

################################################################################
############################### Homebrew #######################################
################################################################################

################################################################################
############################# Homebrew Taps ####################################
################################################################################

brew tap caskroom/cask
brew install Caskroom/cask/xquartz
brew tap homebrew/completions
brew tap homebrew/dupes

################################################################################
########################## Update System Utils #################################
################################################################################

brew install wget
brew install coreutils
brew install findutils
brew install binutils
brew install diffutils
brew install gnutls
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install grep --with-default-names
brew install bash
brew install make
brew install less

################################################################################
######################### Programming Languages ################################
################################################################################


# python
brew install python --with-brewed-openssl
pip install --upgrade pip
pip install --user pyyaml
pip install --user colorama
pip install rtv
pip install qrcode



################################################################################
################################# git ##########################################
################################################################################

brew install git git-flow-avh bash-completion gnu-getopt
curl https://raw.githubusercontent.com/petervanderdoes/git-flow-completion/develop/git-flow-completion.bash > git-flow-completion.bash
chmod 755 git-flow-completion.bash
mv git-flow-completion.bash ~/.git-flow-completion.sh
brew install tig

################################################################################
############################## Utilities #######################################
################################################################################

brew install vim --with-python3 --with-tcl --with-perl --override-system-vi
brew install tmux
brew install reattach-to-user-namespace
brew install jq
brew install ssh-copy-id
brew install stow
brew install imagemagick
brew install libvpx
brew install ffmpeg --with-libvpx
brew install the_silver_searcher
brew install tree
brew install unrar
brew install calc
brew install htop
brew install youtube-dl
brew install p7zip
brew install figlet
brew install gsl


################################################################################
############################# Applications #####################################
################################################################################


brew cask install iterm2
brew cask install skype
brew cask install vlc
brew cask install gpgtools
brew install mas

# Microsoft Remote Desktop
mas install 715768417

################################################################################
########################### Quicklook Plugins ##################################
################################################################################

brew cask install betterzipql
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlprettypatch
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json

################################################################################
############################## Completions #####################################
################################################################################

brew install bundler-completion
brew install gem-completion
brew install grunt-completion
brew install pip-completion
brew install vagrant-completion




################################################################################
########################### Plugin Installs ####################################
################################################################################

vim -c ":PlugInstall|q|q" # auto install plugins
$HOME/.tmux/plugins/tpm/bin/install_plugins

brew install gpg

################################################################################
####################### System Configuration ###################################
################################################################################

