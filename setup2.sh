# ____  _____ _______ _   _  ____
#/ ___|| ----|--  ---| | | ||  _ \
#\___ \| |___   | |  | | | || |_) |
# ___) | |---   | |  | |_| ||  _ /
#\____/|_____   |_|  \_____/|_|
#

# Change shell to your favorite flavor
#chsh -s /usr/local/bin/bash
chsh -s $(which zsh) $USER # change shell to zsh
# add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells


# ##################################
# Create config folders and files  #
# ##################################
#
mkdir -p ~/.config # Creates .config folder for XDG_CONFIG_HOME environment variable
mkdir -p ~/.cache # Creates .cache folder for XDG_CACHE_HOME environment variable
mkdir -p ~/.local/share # Creates .local/share folder for XDG_DATA_HOME environment variable
mkdir -p ~/.local/run # Creates .local/run folder for XDG_RUNTIME_DIR environment variable

mkdir -p ~/.config/.zsh # Creates .config/zsh folder for ZDOTDIR environment variable
mkdir -p ~/.config/.bash # Creates .config/bash folder for BASH_CONFIG environment variable
mkdir -p ~/.config/.wget # Creates .config/wget folder for WGETRC environment variable
mkdir -p ~/.config/.tmux # Creates .config/tmux folder for TMUX_CONFIG environment variable
mkdir -p ~/.config/.npm # Creates .config/npm folder for NPM_CONFIG_USERCONFIG environment variable
mkdir -p ~/.config/.ipython # Creates .config/ipython folder for IPYTHONDIR environment variable
mkdir -p ~/.config/.readline # Creates .config/readline folder for INPUTRC environment variable
mkdir -p ~/.config/.oh-my-zsh # Creates .config/.oh-my-zsh folder for ZSH environment variable
mkdir -p ~/.config/.oh-my-zsh/custom # Creates .config/.oh-my-zsh/custom folder for ZSH_CUSTOM environment variable
mkdir -p ~/.config/.oh-my-zsh/custom/themes # Creates .config/.oh-my-zsh/custom/themes folder for ZSH_THEME environment variable
mkdir -p ~/.config/.Powerlevel10k # Creates .config/Powerlevel10k folder for POWERLEVEL9K_CONFIG_FILE environment variable
mkdir -p ~/.local/share/terminfo # Creates .local/share/terminfo folder for TERMINFO environment variable
mkdir -p ~/.local/share/node_repl_history # Creates .local/share/node_repl_history folder for NODE_REPL_HISTORY environment variable
mkdir -p ~/.local/share/npm # Creates .local/share/npm folder for NPM_HOME environment variable
mkdir -p ~/.local/share/nvm # Creates .local/share/nvm folder for NVM_DIR environment variable
mkdir -p ~/.cache/pylint # Creates .cache/pylint folder for PYLINTHOME environment variable
mkdir -p ~/.local/share/rustup # Creates .local/share/rustup folder for RUSTUP_HOME environment variable
mkdir -p ~/.local/share/gem # Creates .local/share/gem folder for GEM_HOME environment variable
mkdir -p ~/.cache/gem # Creates .cache/gem folder for GEM_SPEC_CACHE environment variable
mkdir -p ~/.local/share/password-store # Creates .local/share/password-store folder for PASSWORD_STORE_DIR environment variable
mkdir -p ~/.config/alacritty # Creates .config/alacritty folder for ALACRITTY_CONFIG environment variable

# Creates bash and zsh config files
touch ~/.config/.bash/.bashrc # Creates .config/bash/.bashrc file for BASH_CONFIG environment variable
touch ~/.config/.bash/.bash_profile # Creates .config/bash/.bash_profile file for BASH_CONFIG environment variable 
touch ~/.config/.bash/.profile # Creates .config/bash/.profile file for BASH_CONFIG environment variable
touch ~/.config/.zsh/.zshrc # Creates .config/zsh/.zshrc file for ZDOTDIR environment variable
touch ~/.config/.zsh/.zshenv # Creates .config/zsh/.zshenv file for ZDOTDIR environment variable
touch ~/.config/.zsh/.zprofile # Creates .config/zsh/.zprofile file for ZDOTDIR environment variable
touch ~/.config/.zsh/.zsh_aliases # Creates .config/zsh/.zsh_aliases file for ZDOTDIR environment variable
touch ~/.config/.zsh/.zsh_keybindings # Creates .config/zsh/.zsh_keybindings file for ZDOTDIR environment variable
touch ~/.config/.zsh/.zsh_plugins # Creates .config/zsh/.zsh_plugins file for ZDOTDIR environment variable
touch ~/.config/.zsh/.zsh_themes # Creates .config/zsh/.zsh_themes file for ZDOTDIR environment variable
touch ~/.config/.zsh/.zfunc # Creates .config/zsh/.zfunc file for ZDOTDIR environment variable
touch ~/.config/.zsh/.zlogin # Creates .config/zsh/.zlogin file for ZDOTDIR environment variable
touch ~/.config/.zsh/.zlogout # Creates .config/zsh/.zlogout file for ZDOTDIR environment variable


# ####################################################################################################################################
# Load some environment variables that use XDG variables (temporary for installation; permanent variables will by synced to .zshenv) #
# ####################################################################################################################################
#
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_RUNTIME_DIR=$HOME/.local/run
export XDG_CONFIG_DIRS=/etc/xdg
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export ZDOTDIR=$XDG_CONFIG_HOME/.zsh  # zsh config directory; default is $HOME; set this to use zsh; see https://wiki.archlinux.org/index.php/Zsh#Configuration
export BASH_CONFIG=$XDG_CONFIG_HOME/.bash # bash config directory; default is $HOME; set this to use bash; see https://wiki.archlinux.org/index.php/Bash#Configuration
export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"
export WGETRC="$XDG_CONFIG_HOME/.wget/.wgetrc"
export TMUX_CONFIG=$XDG_CONFIG_HOME/.tmux/tmux.conf
export RBENV_ROOT=$XDG_DATA_HOME/rbenv
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/.npm/npmrc
export NODE_REPL_HISTORY=$XDG_DATA_HOME/node_repl_history
export NPM_HOME=$XDG_DATA_HOME/npm
export NVM_DIR=$XDG_DATA_HOME/nvm
export ALACRITTY_CONFIG=$XDG_CONFIG_HOME/.alacritty/alacritty.yml
export PYLINTHOME=$XDG_CACHE_HOME/pylint
export RUSTUP_HOME=$XDG_DATA_HOME/rustup
export IPYTHONDIR=$XDG_CONFIG_HOME/.ipython
export INPUTRC=$XDG_CONFIG_HOME/.readline/inputrc
export POWERLEVEL9K_CONFIG_FILE=$XDG_CONFIG_HOME/.Powerlevel10k/.p10k.zsh # This is the config file for Powerlevel10k; I added this, it may not be necessary unless I make other changes
export POWERLEVEL10K_CONFIG_FILE=$XDG_CONFIG_HOME/.Powerlevel10k/.p10k.zsh # This is the config file for Powerlevel10k; I added this, it may not be necessary unless I make other changes
export PASSWORD_STORE_DIR=$XDG_DATA_HOME/password-store
export ZSH="$XDG_CONFIG_HOME/.oh-my-zsh"
export MANPATH="/usr/local/man:$MANPATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib:$LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/ruby/include:$CPPFLAGS"

export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig:$PKG_CONFIG_PATH"
export PYENV_ROOT=$XDG_DATA_HOME/pyenv
export PYENV_DIR=$XDG_CONFIG_HOME/.pyenv
export POETRY_HOME=/etc/poetry
export POETRY_CONFIG_DIR=$XDG_CONFIG_HOME/.pypoetry # This is the directory where the poetry config file is stored
export POETRY_DATA_DIR=$XDG_DATA_HOME/pypoetry # This is the directory where poetry stores its data
export POETRY_CACHE_DIR=$XDG_CACHE_HOME/pypoetry # This is the directory where poetry stores its cache
export PIPX_HOME=$XDG_DATA_HOME/pipx # Overrides default pipx location. Virtual Environments will be installed to $PIPX_HOME/venvs.
export PIPX_BIN_DIR=$XDG_DATA_HOME/pipx/bin # Overrides location of pipx binaries. Apps are symlinked or copied here.
export PIPX_DEFAULT_PYTHON=python3  # Overrides default python used for pipx commands.
export CLOUDSDK_PYTHON=python3    # For Google Cloud SDK - points to the preferred python

export PYENV_DIR=$XDG_CONFIG_HOME/.pyenv
export NODENV_ROOT=$XDG_DATA_HOME/nodenv
export NODENV_DIR=$XDG_CONFIG_HOME/.nodenv
export NPM_HOME=$XDG_CONFIG_HOME/.npm
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/.npm/.npmrc
export NODE_REPL_HISTORY=$XDG_DATA_HOME/node_repl_history
export NVM_DIR=$XDG_CONFIG_HOME/.nvm
export RBENV_ROOT=$XDG_DATA_HOME/rbenv
export RBENV_DIR=$XDG_CONFIG_HOME/.rbenv # Directory to start searching for .ruby-version files.
export GEM_HOME=$XDG_DATA_HOME/gem
export GEM_PATH=$XDG_DATA_HOME/gem
export GEM_SPEC_CACHE=$XDG_CACHE_HOME/gem


# ##############################
# Modify location of SSH keys  #
# ##############################
#
# Modify the /etc/ssh/ssh_config and /etc/ssh/sshd_config files to point to ssh keys stored in XDG_CONFIG_HOME/.ssh instead of ~/.ssh
# Check if the script is being run with root privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root."
   exit 1
fi

# Backup the original ssh_config and sshd_config files
cp /etc/ssh/ssh_config /etc/ssh/ssh_config.backup
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.backup

# Modify the text in the ssh_config file
# sudo sed -i "s/old_text/new_text/g" /etc/ssh/ssh_config
sudo sed -i "s/IdentityFile ~\/.ssh\/id_rsa/IdentityFile \$XDG_CONFIG_HOME\/.ssh\/id_rsa/g" /etc/ssh/ssh_config
sudo sed -i "s/IdentityFile ~\/.ssh\/id_dsa/IdentityFile \$XDG_CONFIG_HOME\/.ssh\/id_dsa/g" /etc/ssh/ssh_config
sudo sed -i "s/IdentityFile ~\/.ssh\/id_ecdsa/IdentityFile \$XDG_CONFIG_HOME\/.ssh\/id_ecdsa/g" /etc/ssh/ssh_config
sudo sed -i "s/IdentityFile ~\/.ssh\/id_ed25519/IdentityFile \$XDG_CONFIG_HOME\/.ssh\/id_ed25519/g" /etc/ssh/ssh_config

echo "Text modified in /etc/ssh/ssh_config."

# Modify the text in the sshd_config file
sudo sed -i "s/AuthorizedKeysFile	.ssh\/authorized_keys/AuthorizedKeysFile	\$XDG_CONFIG_HOME\/.ssh\/authorized_keys/g" /etc/ssh/sshd_config

echo "Text modified in /etc/ssh/sshd_config."

# Restart the ssh service to apply changes
sudo launchctl unload -w /System/Library/LaunchDaemons/ssh.plist # Stop SSH service (Mac)
sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist # Start SSH service (Mac)
sudo launchctl list | grep ssh # Ensure service is running properly

echo "SSH service restarted."


# ###################
# Install Homebrew  #
# ###################
#
# Install Xcode command line tools
xcode-select --install

# install homebrew
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update # Fetch latest version of homebrew and formula
brew upgrade # Upgrade any already-installed formulae
brew cleanup # Remove any older versions from the cellar
brew install cask # Cask is a command line interface for the administration of macOS applications distributed as binaries
brew install --cask cakebrew # GUI app for Homebrew
brew install mas # Mac App Store command-line interface (apps must have previously been purchased for mas to work) https://github.com/mas-cli/mas



# #############################
# Install Nix Package Manager #
# #############################
#
#curl -L https://nixos.org/nix/install | sh # install nix
#. ~/.nix-profile/etc/profile.d/nix.sh # load nix
#
## Instll packages
#nix-env -iA \
#    nixpkgs.zsh \
#        nixpkgs.bash \
#        nixpkgs.antibody \
#        nixpkgs.antigen \
#        nixpkgs.git \
#        nixpkgs.tmux \
#        nixpkgs.neovim \
#        nixpkgs.ripgrep \
#        nixpkgs.the_silver_searcher \
#        nixpkgs.stow \
#        nixpkgs.yarn \
#        nixpkgs.bat \
#        nixpkgs.direnv \
#        nixpkgs.fd \
#        nixpkgs.fzf \
#        nixpkgs.entr \
#        nixpkgs.ack \
#        nixpkgs.curl \
#        nixpkgs.wget \
#        nixpkgs.gnupg \
#        nixpkgs.gnupg2 \
#        nixpkgs.gpg \
#        nixpkgs.gpg2

# Bundle zsh plugins
#antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh


# ######################
# Unstow config files  #
# ######################
#
# Sync and download shell config files from GitHub using GNU Stow
mkdir -p ~/.dotfiles
cd ~/.dotfiles
mkdir -p ~/.dotfiles/alacritty
mkdir -p ~/.dotfiles/bash
mkdir -p ~/.dotfiles/Code #vscode
mkdir -p ~/.dotfiles/conda
mkdir -p ~/.dotfiles/Dev
mkdir -p ~/.dotfiles/Dev/AWS
mkdir -p ~/.dotfiles/direnv
mkdir -p ~/.dotfiles/docker
mkdir -p ~/.dotfiles/fish
mkdir -p ~/.dotfiles/fontconfig
mkdir -p ~/.dotfiles/gcloud
mkdir -p ~/.dotfiles/gh
mkdir -p ~/.dotfiles/git
mkdir -p ~/.dotfiles/github-copilot
mkdir -p ~/.dotfiles/gitkraken
mkdir -p ~/.dotfiles/gtk-2.0
mkdir -p ~/.dotfiles/iterm2
mkdir -p ~/.dotfiles/knime
mkdir -p ~/.dotfiles/npm
mkdir -p ~/.dotfiles/nvim
mkdir -p ~/.dotfiles/nvm
mkdir -p ~/.dotfiles/oh-my-zsh
mkdir -p ~/.dotfiles/pip
mkdir -p ~/.dotfiles/Powerlevel10k
mkdir -p ~/.dotfiles/pyautoenv
mkdir -p ~/.dotfiles/pyenv
mkdir -p ~/.dotfiles/pypoetry
mkdir -p ~/.dotfiles/redhat
mkdir -p ~/.dotfiles/rstudio
mkdir -p ~/.dotfiles/ssh
mkdir -p ~/.dotfiles/tmux
mkdir -p ~/.dotfiles/vim
mkdir -p ~/.dotfiles/vivaldi
mkdir -p ~/.dotfiles/wget
mkdir -p "~/.dotfiles/Y2mate Downloader"
mkdir -p ~/.dotfiles/youtube-dl
mkdir -p ~/.dotfiles/yt-dlp
mkdir -p ~/.dotfiles/zsh
git clone

brew install stow
stow alacritty
stow bash
stow Code #vscode
stow conda
stow Dev
stow Dev/AWS
stow direnv
stow docker
stow fish
stow fontconfig
stow gcloud
stow gh
stow git
stow github-copilot
stow gitkraken
stow gtk-2.0
stow iterm2
stow knime
stow npm
stow nvim
stow nvm
stow oh-my-zsh
stow pip
stow Powerlevel10k
stow pyautoenv
stow pyenv
stow pypoetry
stow redhat
stow rstudio
stow ssh
stow tmux
stow vim
stow vivaldi
stow wget
stow "Y2mate Downloader"
stow youtube-dl
stow yt-dlp
stow zsh


# ######################################################################
# Skip Verification of Mac Apps that are downloaded from the internet  #
# ######################################################################
#
# Disable Mac Gatekeeper (System Preferences > Security & Privacy > General > Allow apps downloaded from: Anywhere)
sudo spctl --master-disable


# ####################################
# Install curl, wget, git, and bash  #
# ####################################
#
brew install curl # cURL is a computer software project providing a library and command-line tool for transferring data using various network protocols
echo 'export PATH="/usr/local/opt/curl/bin:$PATH"' >> $ZDOTDIR/.zshenv # Add the curl executable to the PATH environment variable
source $ZDOTDIR/.zshenv # Reload .zshenv to update the PATH environment variable
# For compilers to find curl you may need to set:
echo 'export LDFLAGS="-L/usr/local/opt/curl/lib"' >> $ZDOTDIR/.zshenv # Add the curl library to the LDFLAGS environment variable
echo 'export CPPFLAGS="-I/usr/local/opt/curl/include"' >> $ZDOTDIR/.zshenv # Add the curl include to the CPPFLAGS environment variable
# For pkg-config to find curl you may need to set:
echo 'export PKG_CONFIG_PATH="/usr/local/opt/curl/lib/pkgconfig"' >> $ZDOTDIR/.zshenv # Add the curl pkgconfig to the PKG_CONFIG_PATH environment variable
brew install wget # GNU Wget is a computer program that retrieves content from web servers
brew install git # Git is a distributed version-control system for tracking changes in source code during software development
brew install bash # This installs Bash 5, which is much updated to the Bash 3 that is included in MacOS. Updated zsh is already included in MacOS. # Since we are using zsh, this is just in case we want to switch to bash in the future




# ####################
# Install oh-my-zsh  #
# ####################
#
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # install oh-my-zsh using curl
# sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # install oh-my-zsh using wget
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$XDG_CONFIG_HOME/.oh-my-zsh/custom}/themes/powerlevel10k # install powerlevel10k theme for oh-my-zsh
#or this way, we can install it directly from GitHub and set it up:
#git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ~/powerlevel10k
mkdir -p $ZSH_CUSTOM/plugins/poetry
#echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
#Install Nerd Font For powerlevel10k & set it up:
#https://github.com/ryanoasis/nerd-fonts
#brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
brew install font-meslo-nerd-font
#brew install --cask font-hack-nerd-font # install nerd font using brew cask--not sure if this is necessary
#brew install --cask font-meslo-nerd-font # install nerd font using brew cask--not sure if this is necessary
# Or use curl:
#cd ~/Library/Fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts//Meslo/S/Regular/DroidSansMNerdFont-Regular.otf # For Mac, or
#cd ~/Library/Fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf # For Mac, or
#mkdir -p ~/.local/share/fonts # For Linux
#cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf # For Linux
# Install zsh syntax highlighting from https://github.com/zsh-users/zsh-syntax-highlighting
# Clone this repository in oh-my-zsh's plugins directory:
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# Activate the plugin in ~/.zshrc:
# plugins=( [plugins...] zsh-syntax-highlighting)
# Install zsh autosuggestions from https://github.com/zsh-users/zsh-autosuggestions
# Clone this repository into $ZSH_CUSTOM/plugins (by default ~/.oh-my-zsh/custom/plugins):
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
# plugins=(# other plugins... zsh-autosuggestions)


# #####################
# Install node tools  #
# #####################
#
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash # install nvm from recommended curl method
#export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
#nvm install latest # install latest version of node
#brew install nvm # NVM is a version manager for node.js, designed to be installed per-user, and invoked per-shell. NVM works on any POSIX-compliant shell (sh, dash, ksh, zsh, bash), in particular on these platforms: unix, macOS, and windows WSL. [note: NVM github recommends installing via curl]
brew install node # Node.js is an open-source, cross-platform, back-end JavaScript runtime environment that runs on the V8 engine and executes JavaScript code outside a web browser
#brew install yarn # Yarn is a package manager for the JavaScript programming language. An alternative to the npm package manager
brew install nodenv # Nodenv is a tool for managing multiple versions of Node.js.
mkdir -p $(nodenv root)/plugins # Make the plugins folder
cd $(nodenv root)/plugins # cd into it
git clone https://github.com/nodenv/nodenv-vars.git # a nodenv plugin, nodenv-vars, lets you set global and project-specific environment variables before spawning Node processes # https://github.com/nodenv/nodenv-vars
git clone https://github.com/nodenv/nodenv-package-rehash "$(nodenv root)"/plugins/nodenv-package-rehash.git # a nodenv plugin, nodenv-package-rehash, to enable automatic rehashing


# #####################################################
# Install other brew packages: Languages & Dev tools  #
# #####################################################
#
#brew install python3 # Python is an interpreted, high-level and general-purpose programming language
# https://jacobsgill.es/python-package-management # Python package management description - suggestion to use Pyenv, Pipx, and Pipenv as a package
# Pyenv
brew install openssl readline sqlite3 xz zlib tcl-tk # Install dependencies for pyenv
brew install pyenv # pyenv lets you easily switch between multiple versions of Python. It's simple, unobtrusive, and follows the UNIX tradition of single-purpose tools that do one thing well
#curl https://pyenv.run | zsh # Another way
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $ZDOTDIR/.zshenv
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> $ZDOTDIR/.zshenv
echo 'eval "$(pyenv init -)"' >> $ZDOTDIR/.zshenv
pyenv install 3.12 # install latest version of python (replace version number with latest version)
pyenv global 3.12 # set global version of python (replace version number with latest version)

# Pipx
pip install --user pipx
pipx ensurepath
pipx install cookiecutter
pipx install black
pipx install glances # Glances is a cross-platform monitoring tool which aims to present a large amount of monitoring information through a curses or Web based interface. The information dynamically adapts depending on the size of the user interface (https://github.com/nicolargo/glances)
#pipx install youtube-dl (Use brew install youtube-dl instead)

# Pipenv
pipx install pipenv # Pipenv is a tool that aims to bring the best of all packaging worlds (bundler, composer, npm, cargo, yarn, etc.) to the Python world. Windows is a first-class citizen, in our world.

# Virtualenv and Virtualenvwrapper
pipx install virtualenv
pipx install virtualenvwrapper # virtualenvwrapper is a set of extensions to Ian Bicking's virtualenv tool. The extensions include wrappers for creating and deleting virtual environments and otherwise managing your development workflow, making it easier to work on more than one project at a time without introducing conflicts in their dependencies
mkdir -p $WORKON_HOME # Creates Dev folder for virtualenvwrapper
export WORKON_HOME=~/Dev
echo 'export WORKON_HOME=~/Dev' >> $ZDOTDIR/.zshenv
echo 'export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3' >> $ZDOTDIR/.zshenv
echo 'export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv' >> $ZDOTDIR/.zshenv
echo 'source /usr/local/bin/virtualenvwrapper.sh' >> $ZDOTDIR/.zshenv

# Poetry
# Poetry is a tool for dependency management and packaging in Python. It allows you to declare the libraries your project depends on and it will manage (install/update) them for you (https://mitelman.engineering/posts/python-best-practice/automating-python-best-practices-for-a-new-project)
POETRY_HOME=/etc/poetry # Add the poetry environment variable
echo 'POETRY_HOME=/etc/poetry' >> $ZDOTDIR/.zshenv # Add the poetry environment variable to .zshenv
pipx install poetry
echo 'export PATH="$HOME/.poetry/bin:$PATH"' >> $ZDOTDIR/.zshenv # Add the poetry executable to the PATH environment variable
echo 'poetry config virtualenvs.in-project true' # Add the poetry virtualenvs.in-project variable to the poetry config file

# Poetry completions for zsh (not oh-my-zsh)
#poetry completions zsh > $ZDOTDIR/.zfunc/_poetry
#mkdir -p ~/.config/zsh/completions
#poetry completions zsh > ~/.config/zsh/completions/_poetry.zsh
#source ~/.config/zsh/completions/_poetry.zsh
#echo 'fpath+=$ZSH_CUSTOM/plugins/poetry' >> $ZDOTDIR/.zshrc # add line to .zshrc
#echo 'autoload -Uz compinit && compinit' >> $ZDOTDIR/.zshrc # add line to .zshrc

# Poetry Tab Completions for oh-my-zsh
mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry

# Ruby
brew install rbenv # rbenv lets you easily switch between multiple versions of Ruby. It's simple, unobtrusive, and follows the UNIX tradition of single-purpose tools that do one thing well
brew install ruby-build # ruby-build is a plugin for rbenv that allows you to compile and install different versions of Ruby
# Make sure this is in path, or run: (these are above in temp environment variables for setup)
rbenv install -l # Installs latest version of Ruby
rbenv global 3.1.2 # Use whatever latest version was installed
rbenv rehash # Rehash the environment variables
gem install bundler # https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-macos
gem install rails # https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-macos
rbenv rehash # Rehash the environment variables
echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> $ZDOTDIR/.zshenv
# Make sure this is in environment variables, or run:
echo 'export LDFLAGS="-L/usr/local/opt/ruby/lib:$LDFLAGS"' >> $ZDOTDIR/.zshenv
# Make sure this is in environment variables, or run: 
echo 'export CPPFLAGS="-I/usr/local/opt/ruby/include:$CPPFLAGS"' >> $ZDOTDIR/.zshenv
# Make sure this is in environment variables, or run:
echo 'export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig:$PKG_CONFIG_PATH"' >> $ZDOTDIR/.zshenv

#brew install node
brew install r # R is a programming language and free software environment for statistical computing and graphics supported by the R Foundation for Statistical Computing.
brew install julia # Julia is a high-level, high-performance, dynamic programming language
brew install lua # Lua is a lightweight, high-level, multi-paradigm programming language designed primarily for embedded use in applications
brew install perl # Perl is a family of two high-level, general-purpose, interpreted, dynamic programming languages
brew install php # PHP is a general-purpose scripting language especially suited to web development
brew install rust # Rust is a multi-paradigm, compiled programming language designed for performance and safety, especially safe concurrency
brew install gcc # GNU Compiler Collection (GCC) is an optimizing compiler produced by the GNU Project supporting various programming languages, hardware architectures and operating systems
brew install autoconf # Automatic configure script builder
brew install automake # Tool for generating GNU Standards-compliant Makefiles
brew install pkg-config # Manage compile and link flags for libraries
brew install --cask iterm2 # Terminal emulator
# Install Gruvbox Dark color theme for iTerm2 at https://iterm2colorschemes.com
brew install --cask warp # Rust-based terminal
brew install --cask tabby # Terminal emulator, SSH and serial client
brew install --cask alacritty # GPU-accelerated terminal emulator
brew install --cask kitty # GPU-based terminal emulator
brew install --cask sublime-text # Text editor for code, markup and prose
brew install --cask sublime-merge #
brew install --cask gitkraken # 
brew install --cask github # GitHub Desktop
brew install --cask sourcetree # 
brew install --cask visual-studio-code # Visual Studio Code is a source-code editor made by Microsoft for Windows, Linux and macOS. Features include support for debugging, syntax highlighting, intelligent code completion, snippets, code refactoring, and embedded Git
brew install --cask rstudio # RStudio is an integrated development environment for R, a programming language for statistical computing and graphics
brew install --cask neo4j # Developer IDE or Management Environment for Neo4j instances
brew install tmux #tmux is a terminal multiplexer: it enables a number of terminals to be created, accessed, and controlled from a single screen. tmux may be detached from a screen and continue running in the background, then later reattached. https://github.com/tmux/tmux
brew install direnv # direnv is an environment switcher for the shell. It knows how to hook into bash, zsh, tcsh, fish shell and elvish to load or unload environment variables depending on the current directory. This allows project-specific environment variables without cluttering the ~/.profile file. https://github.com/direnv/direnv


# #########################################
# Install other brew packages: DevSecOps  #
# #########################################
#
brew install docker #
brew install --cask docker # Docker is a set of platform as a service products that use OS-level virtualization to deliver software in packages called containers
brew install docker-compose
brew install docker-machine
brew install kubernetes-cli
brew install kubernetes-helm
brew install minikube # minikube is local Kubernetes, focusing on making it easy to learn and develop for Kubernetes. All you need is Docker (or similarly compatible) container or a Virtual Machine environment, and Kubernetes is a single command away: minikube start
brew install kubectl # kubectl controls the Kubernetes cluster manager
brew install terraform # Terraform is an open-source infrastructure as code software tool that provides a consistent CLI workflow to manage hundreds of cloud services
brew install ansible # Ansible is an open-source software provisioning, configuration management, and application-deployment tool enabling infrastructure as code
brew install awscli # The AWS Command Line Interface (CLI) is a unified tool to manage your AWS services
brew install azure-cli # Azure CLI is a command-line tool for managing Azure resources
brew install google-cloud-sdk # The Cloud SDK is a set of tools for Cloud Platform. It contains gcloud, gsutil, and bq, which you can use to access Google Compute Engine, Google Cloud Storage, Google BigQuery, and other products and services from the command-line. You can run these tools interactively or in your automated scripts
brew install heroku # Heroku is a platform as a service (PaaS) that enables developers to build, run, and operate applications entirely in the cloud
brew install vagrant # Vagrant is an open-source software product for building and maintaining portable virtual software development environments; e.g., for VirtualBox, KVM, Hyper-V, Docker containers, VMware, and AWS


# ##########################################
# Install other brew packages: Networking  #
# ##########################################
#
brew install wireshark # Wireshark is a free and open-source packet analyzer. It is used for network troubleshooting, analysis, software and communications protocol development, and education
brew install nmap # Nmap is a free and open-source network scanner created by Gordon Lyon. Nmap is used to discover hosts and services on a computer network by sending packets and analyzing the responses
brew install netcat # Netcat is a computer networking utility for reading from and writing to network connections using TCP or UDP. Netcat is designed to be a dependable back-end that can be used directly or easily driven by other programs and scripts 
brew install tcpdump # tcpdump is a common packet analyzer that runs under the command line. It allows the user to display TCP/IP and other packets being transmitted or received over a network to which the computer is attached
brew install iperf # iperf is a network testing tool that can create TCP and UDP data connections and measure the throughput of a network that is carrying them
brew install --cask netspot # NetSpot is a Wi-Fi stumbler and map-based Wi-Fi site survey tool for macOS. It includes a Wi-Fi discovery tool, a Wi-Fi scanner, and the ability to create detailed heatmap visualizations of network coverage

# #######################################
# Install other brew packages: Various  #
# #######################################
#
brew install --cask stats # Stats is a macOS system monitor in your menu bar
brew install --cask fig # Fig is a visual development environment for the terminal
brew install --cask rectangle-pro # Rectangle is a window management app based on Spectacle, written in Swift
brew install alt-tab # AltTab brings the power of Windows’s “alt-tab” window switcher to macOS. It is keyboard-centric, customizable, and allows you to switch between windows using the keyboard alone, without ever touching the mouse
brew install neofetch
brew install htop # htop is a command line tool for viewing and controlling the system load on a computer. It displays the CPU load, memory usage, and disk usage of the system. It also displays a list of processes currently being run and their process identification numbers (PIDs)
brew install lsd # lsd is a next-generation ls command. The command is written in Rust and defaults to a colored output with symbol support. It supports a number of features beyond the traditional ls, such as viewing the Git status for a directory, viewing file permissions in octal format, and displaying the number of hard links for a file or directory https://github.com/lsd-rs/lsd
#brew install tree # tree is a recursive directory listing utility. It produces a depth indented listing of files, which is colorized to indicate file type and permissions. It also prints the total size of directories. # Not installed because using tree as an alias to lsd instead
brew install coreutils # GNU Core Utilities are the basic file, shell and text manipulation utilities of the GNU operating system. These are the core utilities which are expected to exist on every operating system # Specifically, adds gls comand, which is an upgraded version of ls; alias for ls and ll will break without coreutils
brew install swiftdefaultappsprefpane # SwiftDefaultApps is an macOS preference pane, application and framework to edit macOS' default applications # https://github.com/Lord-Kamina/SwiftDefaultApps
brew install fzf # Fuzzy finder for your shell
$(brew --prefix)/opt/fzf/install # To install useful keybindings and fuzzy completion
# sh /usr/local/opt/fzf/install # To install useful keybindings and fuzzy completion (not sure if this works)
# sh /usr/local/opt/fzf/uninstall # To uninstall useful keybindings and fuzzy completion
brew install --cask microsoft-office # Microsoft Office, or simply Office, is a family of client software, server software, and services developed by Microsoft
brew install --cask vivaldi
brew install --cask brave-browser
brew install --cask google-chrome # Google Chrome is a cross-platform web browser developed by Google
brew install --cask firefox # Mozilla Firefox, or simply Firefox, is a free and open-source web browser developed by the Mozilla Foundation and its subsidiary, the Mozilla Corporation
brew install --cask adobe-acrobat-reader # Adobe Acrobat Reader DC is a free and widely used PDF reader application for macOS
brew install --cask google-earth-pro # brew install --cask signal # Signal is a cross-platform centralized encrypted messaging service developed by the Signal Foundation and Signal Messenger LLC. It uses the Internet to send one-to-one and group messages, which can include files, voice notes, images and videos
brew install --cask microsoft-teams # Microsoft Teams is a proprietary business communication platform developed by Microsoft, as part of the Microsoft 365 family of products
brew install --cask zoom # Zoom is a video conferencing service used by companies and universities for remote communication
brew install --cask slack # Slack is a proprietary business communication platform developed by American software company Slack Technologies
brew install --cask discord # Discord is a proprietary freeware VoIP application and digital distribution platform designed for creating communities ranging from gamers to education
brew install --cask parallels # 
brew install --cask virtualbox # VirtualBox is a free and open-source hosted hypervisor for x86 virtualization, developed by Oracle Corporation
brew install --cask microsoft-remote-desktop # Remote Desktop Client
brew install --cask nordvpn # 
brew install --cask spotify # Spotify is a Swedish audio streaming and media services provider, launched in October 2008
brew install --cask vlc # VLC media player is a free and open-source portable cross-platform media player software and streaming media server developed by the VideoLAN project
brew install --cask whatsapp # WhatsApp is a freeware, cross-platform messaging and Voice over IP service owned by Facebook
brew install --cask skype # Skype is a telecommunications application that specializes in providing video chat and voice calls between computers, tablets, mobile devices, the Xbox One console, and smartwatches over the Internet
brew install --cask alfred # Alfred is a productivity application for macOS, which boosts your efficiency with hotkeys, keywords and text expansion
brew install --cask gimp # GIMP is a free and open-source raster graphics editor used for image retouching and editing, free-form drawing, converting between different image formats, and more specialized tasks
brew install --cask blender # Blender is a free and open-source 3D computer graphics software toolset used for creating animated films, visual effects, art, 3D printed models, motion graphics, interactive 3D applications, virtual reality and computer games
brew install --cask inkscape # Inkscape is a free and open-source vector graphics editor used to create vector images, primarily in Scalable Vector Graphics format
brew install --cask libreoffice # LibreOffice is a free and open-source office suite, a project of The Document Foundation
brew install --cask tor-browser # Tor Browser is a free and open-source web browser for privacy and anonymity that routes web traffic through the Tor network
brew install --cask qbittorrent # qBittorrent is a cross-platform free and open-source BitTorrent client
brew install --cask calibre # Calibre is a cross-platform open-source suite of e-book software
brew install --cask cyberduck # Cyberduck is a libre server and cloud storage browser for Mac and Windows with support for FTP, SFTP, WebDAV, Amazon S3, OpenStack Swift, Backblaze B2, Microsoft Azure & OneDrive, Google Drive and Dropbox
brew install --cask filezilla # FileZilla is a free software, cross-platform FTP application, consisting of FileZilla Client and FileZilla Server
brew install --cask transmission # Transmission is a BitTorrent client which features a variety of user interfaces on top of a cross-platform back-end
brew install --cask handbrake # HandBrake is a free and open-source transcoder for digital video files, originally developed in 2003 by Eric Petit to make ripping a film from a DVD to a data storage device easier
brew install --cask iina # IINA is a free and open-source media player for macOS
brew install --cask keka # Keka is a free file archiver for macOS
brew install --cask the-unarchiver # The Unarchiver is a free data decompression utility, which supports more formats than Archive Utility
brew install --cask appcleaner # AppCleaner is a small application which allows you to thoroughly uninstall unwanted apps
brew install --cask cheatsheet # CheatSheet is a free utility made by Media Atelier that provides a quick overview of keyboard shortcuts for the active application
brew install --cask karabiner-elements # Karabiner-Elements is a powerful utility for keyboard customization on macOS Sierra or later
brew install --cask spectacle # Spectacle allows you to organize your windows without using a mouse
brew install --cask bartender # Bartender is an app that allows you to organize your menu bar apps, by hiding them, rearranging them, or moving them to the Bartender Bar
brew install --cask hammerspoon # Hammerspoon is a desktop automation tool for macOS
brew install --cask stats # Stats is a macOS system monitor in your menu bar
brew install --cask istat-menus # iStat Menus is an advanced Mac system monitor, covering an enormous range of stats
brew install --cask balenaetcher # balenaEtcher is a free and open-source utility used for writing image files such as .iso and .img files, as well as zipped folders onto storage media to create live SD cards and USB flash drives
brew install --cask arduino # Arduino is an open-source electronics platform based on easy-to-use hardware and software
brew install --cask tunnelblick # Tunnelblick is a free and open-source application for macOS that can be used to create a virtual private network (VPN)
brew install --cask mactex # 
brew install --cask pocket # 
brew install --cask gpg-suite # GPG Suite is an open source software suite for e-mail and file encryption
brew install youtube-dl
brew install yt-dlp
brew install bat # A cat clone with syntax highlighting and Git integration. https://github.com/sharkdp/bat
brew install ripgrep # A line-oriented search tool that recursively searches the current directory for a regex pattern https://github.com/BurntSushi/ripgrep
brew install fzf # fzf is a general-purpose command-line fuzzy finder https://github.com/junegunn/fzf
$(brew --prefix)/opt/fzf/install # To install useful key bindings and fuzzy completion
brew install antigen # Plugin manager for zsh, inspired by oh-my-zsh and vundle https://antigen.sharats.me
# brew install antibody # Antibody is a shell plugin manager made from the ground up thinking about performance. It is faster because it can do things concurrently, while Antigen does it sequentially. https://getantibody.github.io (antibody is outdated in brew)
curl -sfL git.io/antibody | sh -s - -b /usr/local/bin # Install antibody using curl
antibody bundle ohmyzsh/ohmyzsh path:plugins/aws # oh-my-zsh plugins are supported by using the path annotation # Does this need to go in zshenv???


# #################
# Install Others  #
# #################
#
# Awesome Vim
# https://github.com/amix/vimrc
# Installs for own user only. Go to GitHub page for instructions if you want to install system-wide
git clone --depth=1 https://github.com/amix/vimrc.git $XDG_CONFIG_HOME/.vim_runtime
sh $XDG_CONFIG_HOME/.vim_runtime/install_awesome_vimrc.sh

# Install exa
# https://the.exa.website
# https://github.com/ogham/exa
# brew install exa
# Install eza (maintained fork of exa)
brew install eza

# Install colorls #https://github.com/athityakumar/colorls # Not using because I use a modified version of lsd
#rbenv rehash
#rehash
#gem install colorls



# #########################
# Install Mac Store Apps  #
# #########################
#
# Update Mac Apple Store apps
mas outdated
mas upgrade
mas install 1615798039 #Readkit
mas install 309601447 #Pocket; original mac version no longer available, this is the iPad version that is ported to MacOS for Apple Silicon
mas install 1477385213 #Save to Pocket, add-on to Safari



softwareupdate --list


# ######################
# Configure Alacritty  #
# ######################
#
touch $XDG_CONFIG_HOME/alacritty/alacritty.yml
#Add Nerdfont for Powerlevel10k
echo 'font:\n  normal:\n    family: "MesloLGS NF"' >> $XDG_CONFIG_HOME/alacritty/alacritty.yml
font:
  normal:
    family: "MesloLGS NF"
# Add themes (Argonaut, etc.)
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
echo "import:\n  -  ~/.config/alacritty/themes/Argonaut.yml" >> $XDG_CONFIG_HOME/alacritty/alacritty.yml


# #############################
# Install Matrix Screensaver  #
# #############################
#
# Download the latest release from https://github.com/monroewilliams/MatrixDownload
# Unzip to Matrix.saver and double-click it to install, then go to System Preferences -> Screen Saver -> Other and pick it from the list.

# Another version: Matrix Screensaver for Mac - run the matrix screensaver within the terminal
#brew install cmatrix
#cmatrix -s # run cmatrix in screensaver mode
#cmatrix -b # run cmatrix in bold mode





# install mojo when it's available
# brew install --cask mojo (or whatever it's called)




# Occasionally run to remove .DS_Store files from home folder (it conflicts with GNU Stow)
sudo find / -name ".DS_Store" -depth -exec rm {} \;


# Or, automate with cron.
# Enter the following UNIX command: sudo crontab -e
# In your development environment and enter the following command:
# 15 1 * * * root find / -name ".DS_Store" -depth -exec rm {} \;
# This crontab entry has the following format:
# <Minute> <Hour> <DayOfMonth> <Month> <DayOfWeek> <User Command>.
# The system automatically runs the command at 1:15 AM everyday. To configure the command for a different time, use different values.


# Another way: completely turn off the automatic creation of these files. Follow the steps below to do so:
# Open Terminal. Then copy/paste this command and press enter:
# defaults write com.apple.desktopservices DSDontWriteNetworkStores true
#To reverse this if ever needed in the future, just change true to false:
#defaults write com.apple.desktopservices DSDontWriteNetworkStores false
#After running one of these commands, reboot your machine.