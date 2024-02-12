# Beginner Dev Setup

First piece of advice: pay attention to recommendations in the Intermediate and Advanced Setups if you want to think about building a system you can grow with. If there are two tools that do similar things, one is easier to use but more limited, the other takes more knowledge to use but is more powerful, I will recommend the easier one for beginners and the more powerful one for intermediate / advanced users. You might want to choose the more powerful option even as a beginner, so that you can grow with it and not have to switch tools.


## Computer Choice
I use a Mac computer, because it is best choice for programmers. Yes, Linux is an option too. Microsoft is not an option. I think Apple is better because:

1. It basically has all of the Linux goodness, plus all of the Apple goodness. Microsoft has none of the Linux goodness, and none of the Apple goodness. Microsoft is a poor imitation of Apple and is clunky.
2. Apple computers are typically more powerful than generic computers, especially if you get an ARM-based system (although Linux is lightweight and gives great performance for the given hardware).
3. There is a lot--A LOT--of software that is written only for POSIX systems, and with Windows you are either SOL or you have to do a workaround.
4. You really need to use a Unix-like (POSIX) file system and be able to run Unix-like shells
5. Most sample code and helps are written for either Mac or Linux (and Mac can typically run Linux commands, either directly or with tweaks to the code). With Microsoft, you are left to interpret and recode. Go to StackOverflow and see how many questions are written for Windows. Not many. Generally they assume you are using Linux or Mac.
6. The Mac ecosystem. Outside of coding, your mac integrates with your iPhone, Apple Watch, iPad, Apple TV, HomeKit, etc., and you can share your purchased apps and Apple+ with your family, and you can track your kids and your dog with an airtag, etc etc.

Plus, some additional considerations:

7. It is cooler
8. You will look like a real programmer at the cafe or the workspace
9. Don't forget to put on some cool coding stickers!

If you are forced to use a Microsoft computer at work, then fine, but install WSL (Windows Subsystem for Linux; Ubuntu) and use that. Better yet, run a VirtualBox with Fedora Linux and use that. Best, install Linux on your computer and use that.

Props to Linux users. A great option too. But I like Mac. To each his own. We can jointly hate on Microsoft.

A plus for Mac is that it is more secure. A plus for Mac is that it is more powerful. A plus for Mac is that it is more integrated with the Apple ecosystem. A plus for Mac is that it is more user-friendly. A plus for Mac is that it is more popular. A plus for Mac is that it is more supported. A plus for Mac is that it is more stylish. A plus for Mac is that it is more fun.

A plus for Linux is that it is free. A plus for Linux is that it is efficient, and can breathe new life into old hardware. A plus for Linux is that servers are mostly run on Linux, and so you can develop on Linux and then deploy to Linux. A plus for Linux is that it is more customizable. A plus for Linux is that it is more open-source. A plus for Linux is that it is more lightweight. A plus for Linux is that it is more flexible.

Desktop or laptop is your choice. Either will work. If you are going to be traveling a lot, then a laptop is probably better. If you are going to be working from home, then a desktop is probably better. If you are going to be doing both, then you can get a laptop, with a dock, a monitor, a keyboard, and a mouse for your home office.

## Desktop Setup

If you go with Mac, the options are iMac, Mac Mini, Mac Studio, or Mac Pro. Buy whatever is in your budget, but know that the only one that is truly upgradable is the Mac Pro, and you will pay through the nose. Make sure you buy enough RAM up-front. With Mac, you are getting the best computer out there, but will pay a lot for it.  If you are resource-constrained, either buy a Mac Mini with lots of RAM, or go with the Linux option below.

If you go with Linux, you can either build your own (recommended if you want to learn some hardware, and gain bragging points), buy a computer with Microsoft Windows on it and convert it to Linux, or buy a specialized Linux computer (Tux?) You will definitely get more bang for your buck with Linux compared to Mac. With enough time, energy, and tweaking, you can make Linux look and behave very well.

As for which Linux distribution to use, there are roughly three major groupings. The dozens of various distributions out there are generally derived from one of these three.
1. The popular choice is Ubuntu (most installations). It is generally easier for beginners, has lots of flavors, and is well-supported an stable.
2. The second choice is the Red Hat family, to include RH Enterprise Linux, CentOS, and Fedora. These are very stable and supported distros, and generally are the best for enterprise use. If you will be ssh'ing into a server, it will probably be running RHEL or CentOS. I personally use Fedora for this reason, so that I am used to the particularities of this system.
3. The third choice is Arch (btw). Istalling Arch requires a lot more involvement, and is not for the faint-of-heart. What you get at the end is a highly-customized version of Linux, the use of the excellent Arch User Repository (AUR), and bragging rights.
4. Another consideration is that while Ubuntu and RH are well-supported, stable, and have multiple flavors for installation, they are also owned by companies (Canonical and Red Hat/IBM respectively). They could have telemetry installed (fancy word for spyware), and development is at the whims of the companies involved.

## Travel / Remote Work System
If you are going to be traveling a lot, then you will want a travel system. This can be a laptop, or it can be a tablet with a keyboard, or it can be a Chromebook. Basic coding doesn't require much compute power. However, since you want a computer that is powerful enough to run a virtual machine, you will want a computer with at least 16GB of RAM. Get the most RAM you can afford.
Bag
Laptop
Mouse
Keyboard


## Browser
Vivaldi
Chrome
Brave

## Text Editor / IDE
VS Code



## Package Manager
Homebrew

## Terminal Emulator & Shell
iTerm2
Zsh

## Project Folders



## Setting Up a Virtual Environment
