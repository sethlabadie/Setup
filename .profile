# ____  ____   ___   _____ _ _     ______
#|  _ \|  _ \ / __ \| ____| | |   | -----     
#| |_) | |_) | |  | | ____| | |   | |____
#|  _ /|  _ <| |__| | ____| | |___| |----
#|_|   |_| \_\\____/|_|   |_|_____|______
#


# ########################
# Environment variables  #
# ########################
#
export COLORTERM="truecolor"
export TERM="xterm-256color"
export BROWSER="vivaldi"
#export EDITOR=nvim
export EDITOR="code"
export GIT_EDITOR="code"
export VISUAL="code"
export PAGER=less
export TERMINAL="iTerm.app"
#export ZDOTDIR=$HOME/.config/zsh  # zsh config directory; default is $HOME; set this to use zsh; see https://wiki.archlinux.org/index.php/Zsh#Configuration
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_RUNTIME_DIR=$HOME/.local/run
export XDG_CONFIG_DIRS=/etc/xdg
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"
export WGETRC=$XDG_CONFIG_HOME/wget/wgetrc
export TMUX_CONFIG=$XDG_CONFIG_HOME/tmux/tmux.conf
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NODE_REPL_HISTORY=$XDG_DATA_HOME/node_repl_history
export NPM_HOME=$XDG_DATA_HOME/npm
export NVM_DIR=$XDG_DATA_HOME/nvm
export PYLINTHOME=$XDG_CACHE_HOME/pylint
export RUSTUP_HOME=$XDG_DATA_HOME/rustup
export GEM_HOME=$XDG_DATA_HOME/gem
export GEM_PATH=$XDG_DATA_HOME/gem
export GEM_SPEC_CACHE=$XDG_CACHE_HOME/gem
export IPYTHONDIR=$XDG_CONFIG_HOME/ipython
#export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export INPUTRC=$XDG_CONFIG_HOME/readline/inputrc
export PASSWORD_STORE_DIR=$XDG_DATA_HOME/password-store
export MANPATH="/usr/local/man:$MANPATH"
export KERNEL_NAME=$(uname | tr [:upper:] [:lower:])
# export NVM_DIR="$HOME/.nvm"
export BASH_SILENCE_DEPRECATION_WARNING=1

# Installation of curl via homebrew stated to add the following to .bash_profile:
export LDFLAGS="-L/usr/local/opt/curl/lib"
export CPPFLAGS="-I/usr/local/opt/curl/include"
# For pkg-config to find curl you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/curl/lib/pkgconfig"

# Installation of ruby@3 via homebrew stated to add the following to .bash_profile. Modified the script by adding ":$LDFLAGS" etc to the end so that multiple paths can be assigned to the variable:
# For compilers to find ruby@3.1 you may need to set:
export LDFLAGS="-L/usr/local/opt/ruby@3.1/lib:$LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/ruby@3.1/include:$CPPFLAGS"
# For pkg-config to find ruby@3.1 you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/ruby@3.1/lib/pkgconfig:$PKG_CONFIG_PATH"

# From the Mono framework:
# To use the assemblies from other formulae you need to set:
export MONO_GAC_PREFIX="/usr/local"


[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


echo ".profile loaded!" # This is a test to see if this file is being sourced