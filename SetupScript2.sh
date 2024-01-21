# ############################################
# Create .config folders and sets XDG homes  #
# ############################################
#
# Creates .config folder
mkdir -p ~/.config
# Creates .cache folder
mkdir -p ~/.cache
# Creates .local/share folder
mkdir -p ~/.local/share
# Sets XDG_CONFIG_HOME, XDG_CACHE_HOME, and XDG_DATA_HOME
echo 'export XDG_CONFIG_HOME="$HOME/.config"' >> ~/.bash_profile
echo 'export XDG_CACHE_HOME=$HOME/.cache"' >> ~/.bash_profile
echo 'export XDG_DATA_HOME=$HOME/.local/share"' >> ~/.bash_profile


# ############################################
# Create .config folders and sets XDG homes  #
# ############################################
#
# Install Xcode command line tools
xcode-select --install
#
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade


# #################################################################################################
# Install bash, create bash profiles and symlink them to $HOME, and change default shell to bash  #
# #################################################################################################
#
brew install bash # Bash is the GNU Project's shell
brew install bash-completion # Bash completion is a program which allows bash to complete filenames and command names automatically
touch ~/.config/bash/.bash_profile # Create .bash_profile in .config/bash
touch ~/.config/bash/.bashrc # Create .bashrc in .config/bash
ln -s ~/.config/bash/.bash_profile ~/.bash_profile # Symlink .bash_profile to $HOME
ln -s ~/.config/bash/.bashrc ~/.bashrc # Symlink .bashrc to $HOME
ln -s ~/.config/bash/.profile ~/.profile # Symlink .profile to $HOME
chsh -s /usr/local/bin/bash # Change default shell to bash
brew install zsh
touch ~/.config/zsh/.zsh_profile
touch ~/.config/zsh/.zshrc
touch ~/.config/zsh/.zprofile
touch ~/.config/zsh/.zshenv
touch ~/.config/zsh/.zfunc
touch ~/.config/zsh/.zsh_aliases
touch ~/.config/zsh/.zsh_keybindings
echo $SHELL
brew install zsh
echo $SHELL



# #########################################
# install curl, wget, and git using brew  #
# #########################################
#
brew install curl
echo 'export PATH="/usr/local/opt/curl/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
# For compilers to find curl you may need to set:
echo 'export LDFLAGS="-L/usr/local/opt/curl/lib"' >> ~/.bash_profile
echo 'export CPPFLAGS="-I/usr/local/opt/curl/include"' >> ~/.bash_profile
# For pkg-config to find curl you may need to set:
echo 'export PKG_CONFIG_PATH="/usr/local/opt/curl/lib/pkgconfig"' >> ~/.bash_profile
# Install wget
brew install wget
touch ~/.config/wget/.wgetrc # Create .wgetrc in .config/wget
echo 'export WGETRC="$XDG_CONFIG_HOME/wget/.wgetrc"' >> ~/.profile
# Install git
git --version
brew install git # Git is a distributed version-control system for tracking changes in source code during software development
brew install gh # GitHub CLI is a command line tool that enables you to use GitHub functionality in your terminal, including pull requests, issues, and releases
brew install --cask github # GitHub Desktop is a fast and easy way to contribute to projects from macOS and Windows
brew install --cask gitkraken # GitKraken is a Git GUI client for Windows, Mac & Linux
# Open a new tab to check the new git version
git --version
git config --global user.name sethlabadie
git config --global user.email sethlabadie@gmail.com
git config --global core.editor code

# #####################
# install node tools  #
# #####################
#
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash # install nvm from recommended curl method
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node # install latest version of node
# brew install nvm # NVM is a version manager for node.js, designed to be installed per-user, and invoked per-shell. NVM works on any POSIX-compliant shell (sh, dash, ksh, zsh, bash), in particular on these platforms: unix, macOS, and windows WSL. [note: NVM github recommends installing via curl, so the brew install is commented out]
# brew install node # Node.js is an open-source, cross-platform, back-end JavaScript runtime environment that runs on the V8 engine and executes JavaScript code outside a web browser. [note: we are installing via nvm, so the brew install is commented out]
brew install yarn # Yarn is a package manager for the JavaScript programming language. An alternative to the npm package manager


# #########################################################
# install other brew packages: languages and programming  #
# #########################################################
#
# install python 3 using brew
brew install python3 # Python is an interpreted, high-level and general-purpose programming language
# Setting PATH for brew version of Python (using 3.11 as example)
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.11/bin"
# install ruby using brew
brew install ruby # Ruby is an interpreted, high-level, general-purpose programming language
brew install rbenv # rbenv is a lightweight Ruby version management utility
echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> ~/.bash_profile
echo 'export LDFLAGS="-L/usr/local/opt/ruby/lib:$LDFLAGS"'
echo 'export CPPFLAGS="-I/usr/local/opt/ruby/include:$CPPFLAGS"'
echo 'export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig:$PKG_CONFIG_PATH"'
# install r using brew
brew install --cask r # R is a programming language and free software environment for statistical computing and graphics supported by the R Foundation for Statistical Computing
brew install --cask rstudio # RStudio is an integrated development environment for R, a programming language for statistical computing and graphics
# install julia using brew
brew install julia # Julia is a high-level, high-performance, dynamic programming language
# install lua using brew
brew install lua # Lua is a lightweight, high-level, multi-paradigm programming language designed primarily for embedded use in applications
# install perl using brew
brew install perl # Perl is a family of two high-level, general-purpose, interpreted, dynamic programming languages
# install php using brew
brew install php # PHP is a general-purpose scripting language especially suited to web development
# install rust using brew
brew install rust # Rust is a multi-paradigm, compiled programming language designed for performance and safety, especially safe concurrency
# install gcc using brew
brew install gcc # GNU Compiler Collection (GCC) is an optimizing compiler produced by the GNU Project supporting various programming languages, hardware architectures and operating systems
brew install --cask iterm2 # iTerm2 is a GPL-licensed terminal emulator for macOS. It was derived from and has mostly supplanted the earlier "iTerm" application
brew install tmux # tmux is a terminal multiplexer for Unix-like operating systems. It allows multiple terminal sessions to be accessed simultaneously in a single window
brew install --cask sublime-text # Sublime Text is a proprietary cross-platform source code editor with a Python application programming interface. It natively supports many programming languages and markup languages, and functions can be added by users with plugins, typically community-built and maintained under free-software licenses
brew install --cask sublime-merge # Sublime Merge is a Git client, from the makers of Sublime Text. It is a fast, lightweight, and powerful Git client for efficient workflows
brew install --cask visual-studio-code # Visual Studio Code is a source-code editor made by Microsoft for Windows, Linux and macOS. Features include support for debugging, syntax highlighting, intelligent code completion, snippets, code refactoring, and embedded Git
brew install --cask jupyterlab # JupyterLab is a web-based interactive development environment for Jupyter notebooks, code, and data. JupyterLab is flexible: configure and arrange the user interface to support a wide range of workflows in data science, scientific computing, and machine learning. JupyterLab is extensible and modular: write plugins that add new components and integrate with existing ones
brew install --cask knime # KNIME Analytics Platform is the free, open-source software for creating data science. Intuitive, open, and continuously integrating new developments, KNIME makes understanding data and designing data science workflows and reusable components accessible to everyone
brew install neovim # Neovim is a Vim-based text editor engineered for extensibility and usability, to encourage new applications and contributions
brew install postgresql # PostgreSQL, also known as Postgres, is a free and open-source relational database management system emphasizing extensibility and SQL compliance
brew install --cask postgres-unofficial # App wrapper for Postgres
brew install --cask postgrespreferencepane # Preference Pane for controlling PostgreSQL database servers
brew install --cask pgadmin4 # pgAdmin is the most popular and feature rich Open Source administration and development platform for PostgreSQL, the most advanced Open Source database in the world
brew install sqlite # SQLite is a relational database management system contained in a C library. In contrast to many other database management systems, SQLite is not a client–server database engine. Rather, it is embedded into the end program
brew install --cask dbeaver-community # DBeaver is a free and open-source universal database tool for developers and database administrators
brew install --cask db-browser-for-sqlite # DB Browser for SQLite is a high quality, visual, open source tool to create, design, and edit database files compatible with SQLite
brew install --cask mysqlworkbench # MySQL Workbench is a visual database design tool that integrates SQL development, administration, database design, creation and maintenance into a single integrated development environment for the MySQL database system
brew install --cask sequel-pro # Sequel Pro is a fast, easy-to-use Mac database management application for working with MySQL databases
brew install --cask dbvisualizer # DbVisualizer is a database management and analysis tool for all major databases (e.g. Oracle, SQL Server, DB2, Sybase, MySQL, SQLite) on Windows, macOS, Linux and Unix platforms
brew install mongodb # MongoDB is a source-available cross-platform document-oriented database program. Classified as a NoSQL database program, MongoDB uses JSON-like documents with optional schemas
brew install --cask mongodb-compass # MongoDB Compass is the GUI for MongoDB. Visually explore your data. Run ad hoc queries in seconds. Interact with your data with full CRUD functionality. View and optimize your query performance
brew install --cask mongodb-compass-community # MongoDB Compass is the GUI for MongoDB. Visually explore your data. Run ad hoc queries in seconds. Interact with your data with full CRUD functionality. View and optimize your query performance
brew install --cask robo-3t # Robo 3T (formerly Robomongo) is the free, lightweight, open-source MongoDB GUI with an embedded mongo shell, real auto-completion, and support for MongoDB 4.0
brew install --cask mongotron # Mongotron is a MongoDB management tool. Some features include: CRUD operations on documents and collections. View and edit BSON documents. Add/remove indexes. Ability to run any MongoDB command. Shell integration (i.e. launch external shell from within Mongotron)
brew install --cask pieces # 


# ####################################
# install other brew packages: Apps  #
# ####################################
#
brew install --cask nordvpn # NordVPN is a personal virtual private network service provider. It has desktop applications for Windows, macOS, and Linux, mobile apps for Android and iOS, as well as an application for Android 
brew install --cask parallels # Parallels Desktop for Mac is a hardware emulation virtualization software, using hypervisor technology that works by mapping the host computer's hardware resources directly to the virtual machine's resources
brew install --cask virtualbox # VirtualBox is a free and open-source hosted hypervisor for x86 virtualization, developed by Oracle Corporation
brew install --cask qbittorrent-lt20 # qBittorrent is a cross-platform free and open-source BitTorrent client
brew install --cask tor-browser # Tor Browser is a free and open-source web browser for privacy and anonymity that routes web traffic through the Tor network
brew install --cask brave-browser # Brave is a free and open-source web browser developed by Brave Software, Inc. based on the Chromium web browser
brew install --cask vivaldi # Vivaldi is a freeware, cross-platform web browser developed by Vivaldi Technologies, a company founded by Opera Software co-founder and former CEO Jon Stephenson von Tetzchner and Tatsuki Tomita
brew install --cask google-chrome # Google Chrome is a cross-platform web browser developed by Google
brew install --cask firefox # Mozilla Firefox, or simply Firefox, is a free and open-source web browser developed by the Mozilla Foundation and its subsidiary, the Mozilla Corporation
brew install --cask adobe-acrobat-reader # Adobe Acrobat Reader DC is a free and widely used PDF reader application for macOS
brew install --cask spotify # Spotify is a Swedish audio streaming and media services provider, launched in October 2008
brew install --cask vlc # VLC media player is a free and open-source portable cross-platform media player software and streaming media server developed by the VideoLAN project
brew install ffmpeg # FFmpeg is a free and open-source software project consisting of a large suite of libraries and programs for handling video, audio, and other multimedia files and streams
brew install flac # FLAC is an audio coding format for lossless compression of digital audio
brew install --cask videoduke # VideoDuke is a video downloader for Mac OS X with a possibility to save any video from YouTube, Vimeo, Dailymotion, Facebook, Twitter, and other websites
brew install --cask gimp # GIMP is a free and open-source raster graphics editor used for image retouching and editing, free-form drawing, converting between different image formats, and more specialized tasks
brew install --cask blender # Blender is a free and open-source 3D computer graphics software toolset used for creating animated films, visual effects, art, 3D printed models, motion graphics, interactive 3D applications, virtual reality and computer games
brew install --cask inkscape # Inkscape is a free and open-source vector graphics editor used to create vector images, primarily in Scalable Vector Graphics format
brew install --cask libreoffice # LibreOffice is a free and open-source office suite, a project of The Document Foundation
brew install --cask openoffice # Apache OpenOffice is a free and open-source office suite, a project of the Apache Software Foundation
brew install --cask calibre # calibre is a cross-platform open-source suite of e-book software
brew install --cask kindle # Kindle is a series of e-readers designed and marketed by Amazon


# ##############################################
# install other brew packages: Communications  #
# ##############################################
#
brew install --cask slack # Slack is a proprietary business communication platform developed by American software company Slack Technologies
brew install --cask discord # Discord is a proprietary freeware VoIP application and digital distribution platform designed for creating communities ranging from gamers to education
brew install --cask zoom # Zoom is a video conferencing service used by companies and universities for remote communication
brew install --cask skype # Skype is a telecommunications application that specializes in providing video chat and voice calls between computers, tablets, mobile devices, the Xbox One console, and smartwatches over the Internet
brew install --cask signal # Signal is a cross-platform centralized encrypted messaging service developed by the Signal Foundation and Signal Messenger LLC. It uses the Internet to send one-to-one and group messages, which can include files, voice notes, images and videos
brew install --cask telegram # Telegram is a freeware, cross-platform, cloud-based instant messaging software and application service
brew install --cask whatsapp # WhatsApp is a freeware, cross-platform messaging and Voice over IP service owned by Facebook
brew install --cask microsoft-teams # Microsoft Teams is a proprietary business communication platform developed by Microsoft, as part of the Microsoft 365 family of products
brew install --cask microsoft-remote-desktop # Microsoft Remote Desktop is a proprietary protocol developed by Microsoft which provides a user with a graphical interface to connect to another computer over a network connection


# ######################################
# install other brew packages: DevOps  #
# ######################################
#
brew install --cask docker # Docker is a set of platform as a service products that use OS-level virtualization to deliver software in packages called containers
brew install docker-compose # Docker Compose is a tool for defining and running multi-container Docker applications
brew install docker-machine # Docker Machine is a tool that lets you install Docker Engine on virtual hosts, and manage the hosts with docker-machine commands
brew install docker-completion # Docker Completion is a bash completion script for docker
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
# install other brew packages: Utility  #
# ##########################################
#
brew install --cask alfred # Alfred is a productivity application for macOS, which boosts your efficiency with hotkeys, keywords and text expansion
brew install --cask malwarebytes # Malwarebytes is an anti-malware software for Microsoft Windows, macOS, Chrome OS, Android, and iOS that finds and removes malware
brew install --cask swiftdefaultappsprefpane # SwiftDefaultApps is an application for macOS that allows you to change the default Web Browser, Mail app, Video Player, and Image Viewer to the ones of your choice
brew install --cask balenaetcher # balenaEtcher is a free and open-source utility used for writing image files such as .iso and .img files, as well as zipped folders onto storage media to create live SD cards and USB flash drives
brew install --cask rectangle
brew install --cask alt-tab
brew install gnu-sed # GNU sed is a Unix utility that parses and transforms text, using a simple, compact programming language
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
brew install --cask arduino # Arduino is an open-source electronics platform based on easy-to-use hardware and software


# ##########################################
# install other brew packages: Networking  #
# ##########################################
#
brew install wireshark # Wireshark is a free and open-source packet analyzer. It is used for network troubleshooting, analysis, software and communications protocol development, and education
brew install --cask tunnelblick # Tunnelblick is a free and open-source application for macOS that can be used to create a virtual private network (VPN)
brew install --cask cyberduck # Cyberduck is a libre server and cloud storage browser for Mac and Windows with support for FTP, SFTP, WebDAV, Amazon S3, OpenStack Swift, Backblaze B2, Microsoft Azure & OneDrive, Google Drive and Dropbox
brew install --cask filezilla # FileZilla is a free software, cross-platform FTP application, consisting of FileZilla Client and FileZilla Server
brew install --cask transmission # Transmission is a BitTorrent client which features a variety of user interfaces on top of a cross-platform back-end

brew install --cask wireshark # Wireshark is a free and open-source packet analyzer. It is used for network troubleshooting, analysis, software and communications protocol development, and education
brew install --cask gpg-suite # GPG Suite is an open source software suite for e-mail and file encryption
brew install nmap # Nmap is a free and open-source network scanner created by Gordon Lyon. Nmap is used to discover hosts and services on a computer network by sending packets and analyzing the responses
brew install netcat # Netcat is a computer networking utility for reading from and writing to network connections using TCP or UDP. Netcat is designed to be a dependable back-end that can be used directly or easily driven by other programs and scripts 
brew install tcpdump # tcpdump is a common packet analyzer that runs under the command line. It allows the user to display TCP/IP and other packets being transmitted or received over a network to which the computer is attached
brew install iperf # iperf is a network testing tool that can create TCP and UDP data connections and measure the throughput of a network that is carrying them


# ############################
# install non-brew packages  #
# ############################
#
# Install dysk
# probably won't work; is actually a tool for Linux
# https://dystroy.org/dysk/

wget https://github.com/Canop/dysk/releases/download/v2.7.1/dysk_2.7.1.zip
wget https://dystroy.org/dysk/download/x86_64-linux/dysk
unzip dysk_2.7.1.zip
sudo mv build/x86_64-linux/dysk /usr/local/bin/
sudo chmod +x /usr/local/bin/dysk


# install mojo when it's available (high performant superscript version of Python)
# brew install --cask mojo (or whatever it's called)
