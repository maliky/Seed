# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022
# read by all shell not only the interactive ones

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
PATH="$HOME/android-studio/bin:$PATH"


################ Tex ################
# export PATH="/usr/local/texlive/2018/bin/x86_64-linux:$PATH"
# export INFOPATH="$INFOPATH:/usr/local/texlive/2018/texmf-dist/doc/info"
# export MANPATH="$MANPATH:/usr/local/texlive/2018/texmf-dist/doc/man"

#set lynx.cfg PATH
# LYNX_CFG="~/.lynx.cfg"
# export LYNX_CFG


# #### editors
export VISUAL=emacs
export EDITOR="$VISUAL"

# #### Zotero
# look in .local/bin.  saved the file in .local/share : 28/07/21

# #### Cask for emacs
# Cask is an Emacs Lisp project management tool, similar to Maven or Leiningen. It aims to control and automate the entire life cycle of an Emacs Lisp package, including dependency management, packaging, distribution and testing.
# https://cask.readthedocs.io/en/latest/guide/introduction.html
# export PATH="$HOME/.cask/bin:$PATH"  29/07/21

# #### for CARDANO, libsodium integration
# export LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"
# export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"

# #### pyenv ####
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init --path)"
fi

