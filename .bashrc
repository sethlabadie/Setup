# ____    _    ____  _   _ ____   ____
#| __ )  / \  / ___|| | | |  _ \ / ___|
#|  _ \ / _ \ \___ \| |_| | |_) | |
#| |_) / ___ \ ___) |  _  |  _ <| |___
#|____/_/   \_\____/|_| |_|_| \_\\____|
#



#############
#  Aliases  #
#############
#
# Alias definitions in bash_aliases
if [ -f $HOME/.config/bash/bash_aliases.bash ]; then
    . $HOME/.config/bash/bash_aliases.bash
fi
#
alias path='echo -e ${PATH//:/\\n}' # path: Echo all executable Paths
alias now='date +"%T"' # now: Current time
alias vi="nvim"
alias vim="nvim"
alias grep="grep --color"
alias ls="ls -aG" # long and colored ls output
# Make commands verbose
alias mv="mv -v"
alias cp="cp -v"
alias rm="rm -v"


echo ".bashrc loaded!" # This is a test to see if this file is being sourced