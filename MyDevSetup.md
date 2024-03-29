# How I Setup my Development Computer

## Computer Choice
I use a Mac computer, because it is the (only) choice. Yes, Linux is an option too. Microsoft is not an option. I think Apple is better because:

1. It basically has all of the Linux goodness, plus all of the Apple goodness. Microsoft has none of the Linux goodness, and none of the Apple goodness. Microsoft is a poor imitation of Apple and is clunky.
2. Apple computers are typically more powerful than generic computers, especially if you get an ARM-based system (although Linux is lightweight and gives great performance for the given hardware).
3. There is a lot--A LOT--of software that is written only for POSIX systems, and with Windows you are either SOL or you have to do a workaround.
4. You really need to use a Unix-like (POSIX) file system and be able to run Unix-like shells
5. Most sample code and helps are written for either Mac or Linux (and Mac can typically run Linux commands, either directly or with tweaks to the code). With Microsoft, you are left to interpret and recode. Go to StackOverflow and see how many questions are written for Windows. Not many.
6. The Mac ecosystem. Outside of coding, your mac integrates with your iPhone, Apple Watch, iPad, Apple TV, HomeKit, etc., and you can share your purchased apps and Apple+ with your family, and you can track your kids and your dog with an airtag, etc etc.

Plus, some additional considerations:

7. It is cooler
8. You will look like a real programmer at the cafe or the workspace

If you are forced to use a Microsoft computer at work, then fine, but install WSL (Windows Subsystem for Linux; Ubuntu) and use that. Better yet, run a VirtualBox with Fedora Linux and use that. Best, install Linux on your computer and use that.

Props to Linux users. A great option too. But I like Mac. To each his own. We can jointly hate on Microsoft.

A plus for Mac is that it is more secure. A plus for Mac is that it is more powerful. A plus for Mac is that it is more integrated with the Apple ecosystem. A plus for Mac is that it is more user-friendly. A plus for Mac is that it is more popular. A plus for Mac is that it is more supported. A plus for Mac is that it is more stylish. A plus for Mac is that it is more fun.

A plus for Linux is that it is free. A plus for Linux is that it is efficient, and can breathe new life into old hardware. A plus for Linux is that servers are mostly run on Linux, and so you can develop on Linux and then deploy to Linux. A plus for Linux is that it is more customizable. A plus for Linux is that it is more open-source. A plus for Linux is that it is more lightweight. A plus for Linux is that it is more flexible.

Desktop or laptop is your choice. Either will work. If you are going to be traveling a lot, then a laptop is probably better. If you are going to be working from home, then a desktop is probably better. If you are going to be doing both, then you can get a laptop, with a dock, a monitor, a keyboard, and a mouse for your home office.

## Desktop Setup

I would like to get a sit-stand desk. I don't have a recommendation yet. For a desk shelf, I have seen [GroveMade](https://grovemade.com) advertised quite a bit, and it looks nice. GroveMade also makes a lot of other nice desktop components. I am open to options.

I am using an iMac. I like the iMac because it is powerful, has a large screen, and is integrated with the Apple ecosystem. However, it is not upgradable and is not as powerful as other options.

An alternative to the iMac is the Mac Mini, Mac Studio, or Mac Pro. All are more expensive, but are more powerful. The Mac Mini and Mac Studio are not upgradable, but I believe the Mac Pro is, although at a steep initial extra cost to purchase it. The Mac Pro is also much larger and heavier.

You  can set your iCloud documents folder to be your default documents folder, so files can be accessed them from any computer that is set up similarly. This will also make it much easier if you are also using a Mac Book Pro for your travel system. Just save the file on your desktop computer, and open it on your Mac Book Pro. Automatically. No need to transfer files. There are three downsides to this approach. First, you will need to pay for more iCloud storage. I pay for the 2TB plan, which is $10/month. I think it is worth it. Second, you will need to be connected to the internet to access your files. This is not a problem for me, since I am always connected to the internet. Third, your computer startup time will be dramatically increased--perhaps a half hour or more. I don't know why this is, but I think it is because the computer is trying to sync all of your files. It is irritating. I just restart my computer before I go to bed, and it is ready in the morning.

If I am using a Mac Book Pro, iMac, or Mac Mini in the future, I would like to get an external GPU (eGPU) to boost the graphics performance. I do Data Science work, so this will be helpful in doing machine learning. I will mount it underneath the desk.

I would also like to get a Thunderbolt dock to connect to multiple monitors and other peripherals. I am not currently using a computer dock since I don't have a laptop and I am not using multiple monitors, but I would choose one that has the power to connect to multiple monitors using Thunderbolt. Thunderbolt is better and faster than HDMI, and can send data both ways. I believe that the [iVANKY FusionDock Max 1 Thunderbolt 4](https://ivanky.com/products/ivanky-docking-station-fusiondock-max-1) is the best on the market. It has two Thunderbolt 4 connections for monitors, while the competition all have only one Thunderbolt 4 connection. The two connections allow for up to four 4k monitors at 60Mhz refresh rate. Many people also mention the [CalDigit TS4](https://www.caldigit.com/thunderbolt-station-4/) as a great option.

The iMac has a built-in monitor (which is of good quality), so I don't have a separate monitor. In the future I will get a widescreen monitor, with another monitor in landscape mode to display my email program, slack, or code.

For desktop speakers, I would like a set which uses s/pidf or optical audio. I don't have a recommendation yet, but the [Klipsh R-41PM](https://www.amazon.com/dp/B07FK48JW8) might work well. Kanto speakers also look nice, with a nice wood finish, but not all models have s/pidf or optical audio.

For a keyboard, I am using the [MacTigr](https://www.daskeyboard.com/mactigr/) from Das Keyboards. It is a mechanical keyboard designed with a Mac layout. Das also offers [Dvorak keycaps](https://shop.daskeyboard.com/collections/accessories/products/das-keyboard-modern-font-dvorak-rgb-keycap-set-for-gamma-zulu-switches-translucent), if that is your typing orientation. The only gripe I have is that I wish this keyboard had backlighting. Other Das keyboards do have backlighting, but not the MacTigr. Finally, I pair this with the [Palm Rest One](https://shop.daskeyboard.com/collections/accessories/products/das-keyboard-palm-rest-one), which I think is a necessity. I am considering exploring the [Keychron](https://www.keychron.com) line, and also ergonomic keyboards such as the [MoErgo Glove80](https://www.moergo.com) and the Dactyl Manuform, but I haven't tried them yet.

For a mouse, I use the Logitech [MX Master 3 for Mac](https://www.logitech.com/en-us/products/mice/mx-master-3s-mac-bluetooth-mouse) mouse. It also needs a good mousepad. I prefer hard plastic. For this, I use the Logitech-G [G440 Gaming Mousepad](https://www.logitechg.com/en-us/products/gaming-mouse-pads/g440-hard-gaming-mouse-pad.943-000790.html). Previously, I used the SteelSeries [QCK Hard Pad](https://steelseries.com/gaming-mousepads/qck-hard), which was also really good. Both are about equal in my opinion.

For headphones, I use the Bose [QuietComfort](https://www.bose.com/p/headphones/quietcomfort-acoustic-noise-cancelling-headphones/QC-HEADPHONEARN.html?dwvar_QC-HEADPHONEARN_color=WHITE%20SMOKE) headphones (formerly QuietComfort 45), although Bose recently came out with the [QuietComfort Ultra](https://www.bose.com/p/headphones/bose-quietcomfort-ultra-headphones/QCUH-HEADPHONEARN.html?dwvar_QCUH-HEADPHONEARN_color=WHITE%20SMOKE&quantity=1). I am intrigued by the Das [Holosonic T1w](https://www.daskeyboard.com/holosonic-t1w/) headphones, which are much cheaper and also connect over wifi in addition to bluetooth.

I use a generic [bookstand](https://www.amazon.com/gp/product/B00MVBDLFC) that I bought on Amazon. There are plenty of other options.

A light is important to illuminate your workspace. BenQ [Blue Genie LED Desk Lamp](https://www.amazon.com/BenQ-Monitors-Eye-Ergonomic-White-Perfect-Architects/dp/B06Y1WN1VJ/ref=sr_1_5?crid=1D9YHUF5NVUOX&keywords=benq%2BLED&qid=1702757296&s=office-products&sprefix=benq%2Bled%2Coffice-products%2C130&sr=1-5&th=1) is a good choice. Although it is offered still on Amazon, BenQ apparently doesn't make it anymore. BenQ also offers the [e-Reading Desk Lamp](https://www.benq.com/en-us/lighting/e-reading-desk-lamp.html) and a monitor lightbar called the [ScreenBar Halo](https://www.benq.com/en-us/lighting/monitor-light.html), either which might be a good option.

For work, I need to insert a security card in order to access certain websites. For this, I use the [Cherry SmartTerminal ST-1144](https://www.cherryamericas.com/smartterminal-st-1144). It has a hefty weight and sits nicely on my desktop. Another option might be the HID [Omnikey 3121](https://www.hidglobal.com/products/omnikey-3121). Follow the advice [here for USB](https://militarycac.com/usbreaders.htm) and [here for USB-C](https://militarycac.com/usbcreaders.htm). Don't buy any cheap Chinese crap on Amazon, because you never know what [malware](https://krebsonsecurity.com/2022/05/when-your-smart-id-card-reader-comes-with-malware/comment-page-1/) it contains.

## Travel / Remote Work System

My travel package will include a Mac Book Pro. No purchase yet.

No current recommendations for a [travel or remote work bag](https://www.standardluggage.com/pages/nomad-backpack). My criteria will be that it fits a 15-inch computer snugly; has a separate compartment for documents; has a separate compartment for computer peripherals, or can hold a peripherals bag; has a separate compartment for extraneous items such as pens and keys; and folds open for TSA compliance.
Some brands that I am considering include [Nomatic](https://www.nomatic.com) and [Mous](https://www.mous.co/products/extreme-commuter-zip-backpack?variant=39993959678010).

No current recommendations for an accessories bag. My criteria will be that it fits a mouse, keyboard, and mousepad; has a separate compartment for cables; has a separate compartment for a power brick; and has a separate compartment for a power cord. All of this may not be necessary if the travel bag has enough compartments or if the keyboard has a separate travel case.

For a travel keyboard, I plan to use a Logitech-G [Pro X TKL Wireless Keyboard](https://www.logitechg.com/en-us/products/gaming-keyboards/pro-x-tkl-wireless-keyboard.html) or one of the [Keychron](https://www.keychron.com) TKL keyboards. If I go with the [MoErgo Glove80](https://www.moergo.com), it comes with a travel case.

For a mouse, I plan to use a Logitech [MX Anywhere 3 for Mac](https://www.logitech.com/en-us/products/mice/mx-anywhere-3-mac) mouse.

For a laptop bar, I plan to use a BenQ [Laptop Bar](https://www.benq.com/en-us/lighting/laptop-light.html).

A great choice for a security card reader is the Identiv [SCR3310v2](https://www.identiv.com/products/logical-access-control/smart-card-readers-writers/contact-smart-card-readers-writers/scr3310v2).

## Browser

For a browser, I use [Vivaldi](https://vivaldi.com), which I install using Brew. Vivaldi is a Chromium-based browser that offers better security and lots of features. I add several extensions: Save to Pocket for reading articles; daily.dev and hackertab.dev to keep track of developer news; octotree, to see github files in a tree format; github-vscode-icons; among others. I use hackertab.dev as my homepage.

In Vivaldi, I use the following workspaces: Personal, Work, Data Science, and Training. In the Personal workspace, I will pin tabs for [GMail](mail.google.com), [Google Calendars](calendar.google.com), my bank, etc. In Work, I pin work email, my timesheet, etc. I stack tabs for various projects or threads.

Another great browser option is the [Brave Browser](https://brave.com), another Chromium-based browser that offers excellent security and access to TOR websites.

## Text Editor / IDE

For a Text Editor / IDE, I primarily use [VS Code](https://code.visualstudio.com). It is open source (although owned by Microsoft), is customizable, and has plenty of extensions. It is also the most popular text editor and you will probably see most people using it. Another great option is [JetBrains PyCharm](https://www.jetbrains.com/pycharm/), a full-featured IDE, which I install using the [Toolbox App](https://www.jetbrains.com/toolbox-app/). If you want a one-stop shop, go with PyCharm. I've used both, and both are great. I am using VS Code due to its popularity and modularity. I also install [Spyder](https://github.com/spyder-ide/spyder), which is a Python IDE for scientific computing. Install with Brew. Finally, I also install [JupyterLab](https://jupyter.org), which is a web-based notebook environment for interactive computing. Install with Brew. I would also like to try [NeoVim](https://neovim.io). I will document my experience here.

VS Code extensions that I use include: [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) (includes [Pylance](<https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance>)), [Google Cloud Code](https://marketplace.visualstudio.com/items?itemName=GoogleCloudTools.cloudcode), [AWS Toolkit](https://marketplace.visualstudio.com/items?itemName=AmazonWebServices.aws-toolkit-vscode), [AWS boto3](https://marketplace.visualstudio.com/items?itemName=Boto3typed.boto3-ide), [Azure Repos](https://marketplace.visualstudio.com/items?itemName=ms-vscode.azure-repos), [CodiumAI](https://marketplace.visualstudio.com/items?itemName=Codeium.codeium), [Data Wrangler](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.datawrangler), [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker), [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) (for Docker), [GitHub Markdown Preview](https://marketplace.visualstudio.com/items?itemName=bierner.github-markdown-preview), [GitHub Repositories](https://marketplace.visualstudio.com/items?itemName=GitHub.remotehub), [GitHub Actions](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-github-actions), [GitHub Codespaces](https://marketplace.visualstudio.com/items?itemName=GitHub.codespaces), [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot), [GitHub Copilot Chat](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot-chat), [GitHub Markdown Preview](https://marketplace.visualstudio.com/items?itemName=bierner.github-markdown-preview), [GitHub Pull Requests and Issues](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github), [GitHub Repositories](https://marketplace.visualstudio.com/items?itemName=GitHub.remotehub), [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens), [json](https://marketplace.visualstudio.com/items?itemName=ZainChen.json), [Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter), [Mojo 🔥](https://marketplace.visualstudio.com/items?itemName=modular-mojotools.vscode-mojo), [Mojo-Lang](https://marketplace.visualstudio.com/items?itemName=CristianAdamo.mojo), [Open Recent via URI](https://marketplace.visualstudio.com/items?itemName=timmoverlaan.uri-open-recent), [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense), [PostgreSQL](https://marketplace.visualstudio.com/items?itemName=ms-ossdata.vscode-postgresql), [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode), [Preview on Web Server](https://marketplace.visualstudio.com/items?itemName=yuichinukiyama.vscode-preview-server), [pyproject.toml Snippets](https://marketplace.visualstudio.com/items?itemName=kamilturek.vscode-pyproject-toml-snippets), [R](https://marketplace.visualstudio.com/items?itemName=REditorSupport.r), [Rainbow CSV](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv), [Remote Repositories](https://marketplace.visualstudio.com/items?itemName=ms-vscode.remote-repositories), [Rust Extension Pack](https://marketplace.visualstudio.com/items?itemName=Zerotaskx.rust-extension-pack), [Python Indent](https://marketplace.visualstudio.com/items?itemName=KevinRose.vsc-python-indent), [isort](https://marketplace.visualstudio.com/items?itemName=ms-python.isort), [Indent Nested Dictionary](https://marketplace.visualstudio.com/items?itemName=mgesbert.indent-nested-dictionary&ssr=false), [Python Environment Manager](https://marketplace.visualstudio.com/items?itemName=donjayamanne.python-environment-manager), [Black Formatter](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter), [Flake8](https://marketplace.visualstudio.com/items?itemName=ms-python.flake8), [AREPL for python](https://marketplace.visualstudio.com/items?itemName=almenon.arepl), [Python Indent](https://marketplace.visualstudio.com/items?itemName=KevinRose.vsc-python-indent), [Test Explorer UI](https://marketplace.visualstudio.com/items?itemName=hbenl.vscode-test-explorer), [Python Test Explorer](https://marketplace.visualstudio.com/items?itemName=LittleFoxTeam.vscode-python-test-adapter), [Python Development Extensions Pack](https://marketplace.visualstudio.com/items?itemName=demystifying-javascript.python-extensions-pack), [autoDocstring](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring), [Dash](https://marketplace.visualstudio.com/items?itemName=deerawan.vscode-dash) (API Documentation Browser and Code Snippet Manager), [SQL Tools](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools), [Sourcery](https://marketplace.visualstudio.com/items?itemName=sourcery.sourcery), [Python Indent](https://marketplace.visualstudio.com/items?itemName=KevinRose.vsc-python-indent), [LiveCode for Python](https://marketplace.visualstudio.com/items?itemName=xirider.livecode), [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag), [autopep8](https://marketplace.visualstudio.com/items?itemName=ms-python.autopep8), [Even Better TOML](https://marketplace.visualstudio.com/items?itemName=tamasfe.even-better-toml), [Google Search](https://marketplace.visualstudio.com/items?itemName=kameshkotwani.google-search) [HTML CSS Support](https://marketplace.visualstudio.com/items?itemName=ecmel.vscode-html-css), [Import Cost](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost),[Intellicode](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode), [IntelliCode API Usage Examples](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.intellicode-api-usage-examples), [Markdown Checkboxes](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-checkbox), [Markdown Footnotes](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-footnotes), [Markdown Preview Mermaid Support](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid), [Markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint), [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml), [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons), [Pieces](https://docs.pieces.app), and [Nord theme](https://marketplace.visualstudio.com/items?itemName=arcticicestudio.nord-visual-studio-code).


## Artificial Intelligence and Copilot

I use both [AWS CodeWhisperer](https://aws.amazon.com/codewhisperer/resources/#Getting_started/), [here](https://docs.aws.amazon.com/codewhisperer/latest/userguide/whisper-setup-ide-devs.html), [here](https://docs.aws.amazon.com/codewhisperer/latest/userguide/whisper-setup-ide-devs.html), or [here](https://docs.aws.amazon.com/codewhisperer/latest/userguide/what-is-cwspr.html), Duet AI (Google) and Codium AI, and Sourcery for code completions and artificial intelligence within VS Code. I also install GitHub Copilot, but do not use it as much except as an additional option. I use CodeWhisperer for autocompletion. Only activate one autocompletion tool at a time. Codium and Sourcery are focused more on testing and documentation, so they are complementary to CodeWhisperer. All, plus Duet AI and GitHub Copilot, have chat windows. AWS CodeWhisperer is tricky to set up, as you need to activate some settings in AWS Toolkit and create a AWS Builder ID (Developer account, different from an AWS account). Duet AI is also tricky to set up, as you need to activate some settings in Google Cloud Platform. Follow the instructions in the Chrome Store. CodeWhisperer is currently free (tbd).
For CodeWhisperer for terminals such as [iTerm2]().
For CodeWhisperer with [VS Code](https://docs.aws.amazon.com/codewhisperer/latest/userguide/whisper-setup-ide-devs.html).
For CodeWhisperer with [PyCharm](https://docs.aws.amazon.com/codewhisperer/latest/userguide/whisper-setup-ide-devs.html).
For CodeWhisperer with [JupyterLab](https://docs.aws.amazon.com/codewhisperer/latest/userguide/jupyterlab-setup.html).


## Package Manager
[Brew](https://brew.sh) is a package manager for MacOS and works similar to apt or dnf. I use it to download most software, both command-line and gui apps. The benefit is that you can regularly use ```brew update && brew upgrade && brew cleanup``` to update all apps you downloaded with brew.

## Terminal Emulator & Shell
For a terminal emulator, I use [iTerm2](https://iterm2.com). It is a very customizable and fast terminal (Mac only). install with Brew. Install new color themes [here](https://iterm2colorschemes.com) (try Gruvbox Dark). As an alternative option, I also like [Warp](https://www.warp.dev), which is very fast (written in Rust) and has plenty of features (Mac only). Install with Brew. If I needed a cross-platform terminal, I would use Alacritty. It is hyper-customizable, and uses a .toml file for customizations. Install with brew.

I use [zsh](https://www.zsh.org) as my shell. Mac has zsh as its default shell, but I like to download the most up-to-date version using brew. After installing, update /etc/shells, and use the command ```chsh -s /usr/local/bin/zsh``` to activate this new shell. Also update this in VS Code settings.json.

I also use [oh-my-zsh](https://github.com/clvv/oh-my-zsh) as a configuration framework for zsh. 

I like to use a theme for oh-my-zsh called [Powerlevel10k](https://github.com/romkatv/powerlevel10k), (also [here](https://fig.io/plugins/other/powerlevel10k)). First, you need to install the [Meslo Nerd Font patched for Powerlevel10k](https://github.com/romkatv/powerlevel10k/blob/master/font.md) (or [here](https://www.nerdfonts.com/font-downloads)) by downloading the versions (Normal, Bold, Italic, Bold Italic) and then double-clicking each one to install into your font book. Then follow the instructions for installing Powerlevel10k.

## Fonts, Ligatures, and Autocompletion

For fonts, I like Meslo Nerd Font (patched for Powerlevel10k with the [Nerd Fonts](https://www.nerdfonts.com) or [here](https://github.com/ryanoasis/nerd-fonts), described above). You can download all Nerd Fonts, not just Meslo Nerd Font, with this curl script: ```cd ~/Library/Fonts && curl -fLO <https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf>``` I then had to go into iTerm2 and VS Code and manually select the font. I hear another good one, for ligatures, is [Fira](https://github.com/tonsky/FiraCode) (although it doesn't have the patch for Nerd Fonts).

To patch Nerd Fonts with any given non-Nerd-Font font, follow [these instructions](https://github.com/ryanoasis/nerd-fonts#font-patcher). You need to download the font you want, then run the [font-patcher script](https://github.com/ryanoasis/nerd-fonts#font-patcher). Install it into your font book by double-clicking on each version (Normal, Bold, Italic, Bold Italic).

To install Ligatures with any non-Ligatures font, I tried to follow [these instructions](https://github.com/ToxicFrog/Ligaturizer), but had a lot of issues (specifically with regards to the output location). I then tried to use [these instructions](<https://github.com/lemeb/a-better-ligaturizer>), but noticed they already had MesloLGS NF Regular.ttf in the repo, so I just downloaded that. It is supposed to have both Nerd Fonts and Ligatures. I then followed the instructions to install it into my font book by double-clicking on each version (Normal, Bold, Italic, Bold Italic). However, it didn't have Nerd Fonts (my terminal was showing boxes instead of icons), so I had to reinstall the regular Nerd Fonts version.

Configure the iTerm2 profile to use the font you want. I use MesloLGS Nerd Font. Enable Ligatures.

Do the same for VS Code. Manually editing settings.json, and set "editor.fontLigatures" to true. This will enable ligatures in VS Code.

Finally, [Git](https://git-scm.com) is a must-have. Install with Brew.

## Pyenv
I manage python distributions with [pyenv](https://github.com/pyenv/pyenv). Pyenv downloads python versions; lets you set the global Python version; lets you set a local (project specific) Python version; lets you easily switch between multiple versions of Python; lets you change the global Python version on a per-user basis; Provides support for per-project Python versions; and allows you to override the Python version with an environment variable. It is very useful and better than installing python with brew. Install pyenv with brew.

I add the following plugins for pyenv: pyenv-default-packages, pyenv-doctor, and pyenv-update

## Pipx
[Pipx](https://pipx.pypa.io/stable/) is used to install Python CLI applications globally while still isolating them in virtual environments. pipx will manage upgrades and uninstalls when used to install Poetry. Install with brew.

I use pipx to install:
black # uncompromising Python code formatter
cookiecutter # creates projects from project templates
flake8 # tool for style guide enforcement
glances # 
jupyter # web-based notebook environment for interactive computing
poetry # python dependency/environment/packaging management
sphinx # 

## Direnv
I like [direnv](https://direnv.net), also [here](https://github.com/direnv/direnv), to load and unload environment variables depending on the current directory. Before each prompt, direnv checks for the existence of a .envrc file in the current and parent directories. If the file exists, it is loaded into a sub-shell and all exported variables are then captured by direnv and then made available to the current shell. It supports hooks for all the common shells like bash, zsh, tcsh and fish. This allows for project-specific environment variables. Install with brew.

## Poetry
I like [Poetry](https://python-poetry.org) for Python packaging and dependency management. Poetry helps you manage your project by creating a virtual environment, resolving dependencies, and then building and packaging your project to a repository when you are done. Poetry creates a pyproject.toml file to manage your project, a README.md file, a .venv virtual environment, and a poetry.lock file. Set the following environment variable in .zshrc or .zshenv: ```POETRY_VIRTUALENVS_IN_PROJECT=true``` This will tell Poetry to create the virtual environment within the project folder, rather than gathering up all the virtual environments in a centralized Poetry folder. I install Poetry with pipx. For configuration, modify the .config.toml file as follows:
```
[virtualenvs]
in-project = true # This is actually redundant with the environment variable set above<br>
prefer-active-python = true # Use currently activated Python version to create a new virtual environment. If set to false, Python version used during Poetry installation is used.
```

## Enable Poetry shell activation and deactivation if you move into a project directory
I couldn't find a pre-packaged solution, but did find [instructions](https://github.com/direnv/direnv/wiki/Python) to integrate Poetry into Direnv to accomplish this task. If you enter a directory with a pyproject.toml file, it will automatically activate the virtual environment. If one doesn't exist, it will automatically guide you through the process to create one, and then will create the virtual environment.

Follow the instructions to modify your .direnvrc file, and then also create a .envrc file in the project folder with the following command: '''layout poetry'''.


## Project Folders

Here is how I set up my project folders.

In my home directory, I have a folder called "Dev," which contains all my projects.

Within the Dev folder, I have 00_Project_Template, which as the name implies, is a template that I copy to start a new project.

Next is 01_Bloat_Project, which contains a virtual environment with all sorts of of packages installed; I use this for quick coding and small projects, just to try stuff out.

For each new project, I increment the number and give it a name in Pascal Case.


00_Project_Template has the following folder structure:

02_Sample_Project<br>
├── 00_admin_(charter,scopingDocs)<br>
├── 01_documents_(reference,meetingNotes)<br>
├── 02_inputs # This is where raw data goes; I then copy it to 03_WIP to clean it and analyze<br>
├── 03_WIP # This is where I spend 95% of my time. It includes a subfolder with the coding project,<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;plus all of the other work-in-progress files, such as draft PowerPoint slides or Excel WorkBooks.<br>
└── 04_outputs # Final results go here, such as final presentations or final spreadsheets

This structure works because it can be used for any project, such as a consulting project or a data analysis project which doesn't involve any code. In that case, 03_WIP would include the data analysis project, plus all of the other work-in-progress files, such as draft PowerPoint slides or Excel WorkBooks. 04_outputs would include the final results, such as final presentations or final spreadsheets. It also works for Data Science projects, since like consulting projects, there will be customer / manager guidance, documents, meeting notes, and other administrative files. The entire coding project (other than the administrative documents or the final output, which may be in Excel or PowerPoint) will be in the 03_WIP folder. The 02_inputs folder will contain the raw data, which will be copied to the 03_WIP folder for cleaning and analysis, although another option is to put the raw data used for a coding project as a subdirectory in 03_WIP. The 04_outputs folder will contain the final results, such as a PowerPoint presentation or an Excel spreadsheet.

For Data Science or coding projects, I generally use the following folder structure for 03_WIP (modified for the project).

02_Sample_Project<br>
├── 00_admin_(charter,scopingDocs)<br>
├── 01_documents_(reference,meetingNotes)<br>
├── 02_inputs<br>
└── 03_WIP<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└── sample_project-py<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├── .venv<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├── src<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├── tests<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├── .envrc<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├── .python-version<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├── poetry.lock<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├── pyproject.toml<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└── README.md<br>
└── 04_outputs



## Setting Up a Virtual Environment

Copy the 00_Project_Template directory structure and rename it to your project name. Navigate to the 03_WIP folder.<br>

Create your Python project by issuing the ```poetry new test-py``` command (rename test-py to whatever your project name is). This creates a project directory with the following contents: test-py directory; tests directory; pyproject.toml; and README.md.<br>

```cd``` into the project folder and rename the second (nested) project folder to ```src```. Then open the pyproject.toml file and make any modifications you need, such as to the description field.<br>

Add some modules that you know you will need by issuing the ```poetry add numpy pandas requests``` command (edit for your needs). This will write these modules to the pyproject.toml file, create a poetry.lock file, create a virtual environment (.venv) directory, and install the modules.<br>

Issue the ```pyenv local 3.12``` command (substitute the version number for any other version of Python you might want). This creates a ```.python-version``` file.<br>

If you want to create a per-project isolated development environment, create a blank ```.envrc``` file. When you navigate to this directory, **direnv** will recognize it and load the environment variables for that project.<br>

Issue the ```git init``` command to start a git repository.

Your project is setup. If you navigate into the project directory, pyautoenv will automatically activate the virtual environment, and direnv will load the ```.envrc``` file. If you navigate away from the project folder, they will exit and unload.
