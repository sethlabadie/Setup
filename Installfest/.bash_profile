# ____    _    ____  _   _ ____  ____   ___   _____ _ _     ______
#| __ )  / \  / ___|| | | |  _ \|  _ \ / __ \| ____| | |   | -----     
#|  _ \ / _ \ \___ \| |_| | |_) | |_) | |  | | ____| | |   | |____
#| |_) / ___ \ ___) |  _  |  _ /|  _ <| |__| | ____| | |___| |----
#|____/_/   \_\____/|_| |_|_|   |_| \_\\____/|_|   |_|_____|______
#

# Use the following command in terminal to best view the PATH:
# echo $PATH | tr : '\n'

# Run .profile to get environment variables
# [[ -f ~/.profile ]] && . ~/.profile # This is one version of doing the same thing
if [ -f ~/.profile ]; then
	. ~/.profile
fi


# Run .bashrc to get the aliases and functions
# [[ -f ~/.bashrc ]] && . ~/.bashrc # This is one version of doing the same thing
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi


# Default prompt
PS1="%n@%m %1~ %# "
#PS1="$(pwd) \$"


# ####################################
# iTerm Shell Integration with Bash  #
# ####################################
#
test -e ~/.iterm2_shell_integration.bash && source ~/.iterm2_shell_integration.bash || true


# ##################
# Bash Completion  #
# ##################
#
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Bash Completion Another Version (but I couldn't get it to work)
#[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


# #############################
# Below is from Code Platoon  #
# #############################
#
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch) \[\033[00m\]$\[\033[00m\] "
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


# ##############
# Keybindings  #
# ##############
#
# This is from zsh; not sure if it is compatible with bash
#typeset -g -A key
#
#key[Home]="${terminfo[khome]}"
#key[End]="${terminfo[kend]}"
#key[Insert]="${terminfo[kich1]}"
#key[Backspace]="${terminfo[kbs]}"
#key[Delete]="${terminfo[kdch1]}"
#key[Up]="${terminfo[kcuu1]}"
#key[Down]="${terminfo[kcud1]}"
#key[Left]="${terminfo[kcub1]}"
#key[Right]="${terminfo[kcuf1]}"
#key[PageUp]="${terminfo[kpp]}"
#key[PageDown]="${terminfo[knp]}"
#key[Shift-Tab]="${terminfo[kcbt]}"
#
# setup key accordingly
#[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"       beginning-of-line
#[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"        end-of-line
#[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"     overwrite-mode
#[[ -n "${key[Backspace]}" ]] && bindkey -- "${key[Backspace]}"  backward-delete-char
#[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"     delete-char
#[[ -n "${key[Up]}"        ]] && bindkey -- "${key[Up]}"         up-line-or-history
#[[ -n "${key[Down]}"      ]] && bindkey -- "${key[Down]}"       down-line-or-history
#[[ -n "${key[Left]}"      ]] && bindkey -- "${key[Left]}"       backward-char
#[[ -n "${key[Right]}"     ]] && bindkey -- "${key[Right]}"      forward-char
#[[ -n "${key[PageUp]}"    ]] && bindkey -- "${key[PageUp]}"     beginning-of-buffer-or-history
#[[ -n "${key[PageDown]}"  ]] && bindkey -- "${key[PageDown]}"   end-of-buffer-or-history
#[[ -n "${key[Shift-Tab]}" ]] && bindkey -- "${key[Shift-Tab]}"  reverse-menu-complete


# ##################
# PATH Statements  #
# ##################
#
#case $KERNEL_NAME in
#    'linux')
#        source "$HOME/.cargo/env"
#        ;;
#    'darwin')
#        PATH:/opt/local/bin:/opt/local/sbin:$PATH
#        ;;
#    *) ;;
#esac
#
#

# Setting PATH for Anaconda3 condabin
export PATH="$HOME/opt/anaconda3/condabin:$PATH"

# Setting PATH for Anaconda3
export PATH="$HOME/opt/anaconda3/bin:$PATH"

# This replaces the sed shipped with MacOS with a "better" version, gnu-sed installed by homebrew
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# Setting PATH for Python 3.11
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.11/bin"

# Setting PATH for Python 3.10
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.10/bin"

# Setting PATH for Python 3.9
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.9/bin"

# Setting PATH for Python 3.8
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.8/bin"

# Setting PATH for Python 3.6
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.6/bin"

# Setting PATH for Pypy 3.7
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/pypy3.7-v7.3.2-osx64/bin"

# Setting PATH for Pypy 3.7.10
export PATH="/usr/local/opt/pypy/bin:$PATH"
export PATH="/usr/local/share/pypy:$PATH"

# Setting PATH for Python 3.9 installed by Brew
export PATH="/usr/local/opt/python@3.9/bin:$PATH"
export PATH="/usr/local/opt/python@3.9/libexec/bin:$PATH"

# Setting PATH for Python 3.10 installed by Brew
export PATH="/usr/local/opt/python@3.10/bin:$PATH"
export PATH="/usr/local/opt/python@3.10/libexec/bin:$PATH"

# Setting PATH for Python 3.11 installed by Brew
export PATH="/usr/local/opt/python@3.11/bin:$PATH"
export PATH="/usr/local/opt/python@3.11/libexec/bin:$PATH"

# Setting PATH for Postgresql
export PATH="/usr/local/opt/postgresql@14/bin:$PATH"

# Setting PATH for Ruby@3.1
export PATH="/usr/local/opt/ruby@3.1/bin:$PATH"


# Binaries installed by gem are placed here
export PATH="/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"
export PATH="$GEM_HOME/bin:$PATH"
export PATH="$GEM_HOME/ruby/2.7.0/bin:$PATH"

# user installed node as default node
export PATH="$HOME/node/node-v16.0.0-${KERNEL_NAME}-x64/bin:$PATH"
export NODE_MIRROR=https://mirrors.ustc.edu.cn/node/



export PATH="$NPM_HOME/bin:$PATH"

# Setting PATH for sqlite3
#export PATH="/usr/local/opt/sqlite/bin:$PATH"
#export PATH="/usr/local/opt/sqlite3/bin:$PATH"

# Adding /usr/local/bin and /usr/local/sbin closer to the top
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Setting PATH for the default Homebrew curl
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="$(brew --prefix)/opt/curl/bin:$PATH"

# Added by Toolbox App
# Allows opening the VS Code application from the terminal with the "code" command
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# user-compiled python as default python
# export PATH=$HOME/python/bin:$PATH
# export PYTHONPATH=$HOME/python/

## >>> conda initialize >>>
## !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/sethlabadie/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/sethlabadie/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/sethlabadie/opt/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="
#        export PATH="$PATH:/Users/sethlabadie/opt/anaconda3/bin"
#    fi
#fi
#unset __conda_setup
## <<< conda initialize <<<





[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# ######################################
# Remove Duplicate Entries from $PATH  #
# ######################################
#
# remove duplicate entries from $PATH for bash
PATH=`printf %s "$PATH" | awk -v RS=: '{ if (!arr[$0]++) {printf("%s%s",!ln++?"":":",$0)}}'`

# remove duplicate entries from $PATH for zsh
# zsh uses $path array along with $PATH 
#typeset -U PATH path #first version
#PATH=$(zsh -fc "typeset -TU P=$PATH p; echo \$P") #second version, not tested
#PATH=$(zsh -fc "typeset -U P=$PATH; echo \$P") #third version, not tested
