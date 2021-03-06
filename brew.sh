#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget`
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen
#brew install php
brew install gmp

# Install font tools.
#brew tap bramstein/webfonttools
#brew install sfnt2woff
#brew install sfnt2woff-zopfli
#brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick
brew install lua
#brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
#brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install webkit2png
#brew install zopfli

# stuff
brew install go
brew install htop
brew install tmux
brew install doxygen
brew install cloc
brew install cppcheck
brew install shellcheck
brew install ipcalc
brew install aspell
brew install python
brew install uncrustify
brew install bro
brew install rust
brew install npm
brew install git-flow-avh
brew cask install aerial

# Remove outdated versions from the cellar.
brew cleanup

# pip installs
pip install --upgrade pip setuptools
pip install scspell3k
pip install pylint
pip install proselint
pip install pep8

# npm installs
npm install -g alex
npm install -g bootlint
npm install -g csslint
npm install -g htmlhint
npm install -g jshint
npm install -g jsonlint
npm install -g write-good

# go installs
go get -u github.com/golang/lint/golint

# gem installs
sudo gem install puppet-lint
