# Beginner Dev Setup

First piece of advice: pay attention to recommendations in the Intermediate and Advanced Setups if you want to think about building a system you can grow with. If there are two tools that do similar things, one is easier to use but more limited, the other takes more knowledge to use but is more powerful, I will recommend the easier one for beginners and the more powerful one for intermediate / advanced users. You might want to choose the more powerful option even as a beginner, so that you can grow with it and not have to switch tools.

## Computer Choice

Your best options are Mac or Linux. Microsoft is not a viable option, although if you must use Microsoft at work, then go ahead and learn it. (If you already have a Microsoft computer, don't worry--you can easily convert it to Linux)

Mac is the most powerful computer on the market, although at a steep price. It is also the most popular platform for development among professional programmers. Linux hardware is generally much cheaper than a Mac, and of course the software is free. Linux also is generally lightweight, so you can get great performance even on older computers.

I personally use a Mac computer, because I think it is the best option for me (and for most developers). You can read my [rant](/MyDevSetup.md) to understand why.

If you go with Mac, the desktop options are iMac, Mac Mini, Mac Studio, or Mac Pro, and the laptop options are MacBook Air and MacBook Pro. Buy whatever is in your budget, but know that the only one that is truly upgradable is the Mac Pro, and you will pay through the nose for that. Make sure you buy enough RAM up-front. With Mac, you are getting the best computer out there, but will pay a lot for it. If you are resource-constrained, either buy a Mac Mini with lots of RAM, or go with the Linux option below.

If you go with Linux, you can either build your own (recommended if you want to learn some hardware, and gain bragging points), or buy a computer with Microsoft Windows on it and convert it to Linux. You will definitely get more bang for your buck with Linux compared to Mac. With enough time, energy, and tweaking, you can make Linux look and behave very well. However, there are some people that say that "Linux is only free if you don't value your time." I think that statement is a bit unfair, because ricing your system can be fun, but the statement certainly has a grain of truth.

As for which Linux distribution to use, there are roughly three major groupings. The dozens of various distributions out there are generally derived from one of these three.
1. The popular choice is Ubuntu (most installations). It is generally easier for beginners, has lots of flavors, and is well-supported and stable.
2. The second choice is the Red Hat family, to include RH Enterprise Linux, CentOS, and Fedora. These are very stable and supported distros, and generally are the best for enterprise use. If you will be ssh'ing into a server, it will probably be running RHEL or CentOS. I personally use Fedora for this reason, so that I am used to the particularities of this system.
3. The third choice is Arch (btw). Istalling Arch requires a lot more involvement, and is not for the faint-of-heart. What you get at the end is a highly-customized version of Linux, the use of the excellent Arch User Repository (AUR), and bragging rights.
4. Another consideration is that while Ubuntu and RH are well-supported, stable, and have multiple flavors for installation, they are also owned by companies (Canonical and Red Hat/IBM respectively). They could have [telemetry installed](https://www.gnu.org/philosophy/ubuntu-spyware.html) (fancy word for spyware), and development is at the [whims](https://discussion.fedoraproject.org/t/red-hat-removes-public-access-to-rhel-source-code-consequences-for-fedora-in-the-long-run/84671) of the companies involved.

## Desktop Setup

### Desk
If you are just starting out, don't worry about what desk you have; just use any desk. You can upgrade it later. If you don't have a desk yet, take a look at the advice in the [Intermediate Setup](/SetupIntermediate.md).

You can start with a single monitor, but I'd recommend either a single really large monitor or two separate monitors. When coding, you will find yourself often going back and forth between your internet browser, your text editor, and your terminal emulator. Being able to fit two or three of those on your monitor(s) would be great. 

If you have a laptop, or if you have multiple monitors, you will need a dock. For right now, you can use a basic dock, such as 

I would also like to get a Thunderbolt dock to connect to multiple monitors and other peripherals. I am not currently using a computer dock since I don't have a laptop and I am not using multiple monitors, but I would choose one that has the power to connect to multiple monitors using Thunderbolt. Thunderbolt is better and faster than HDMI, and can send data both ways. I believe that the iVANKY FusionDock Max 1 Thunderbolt 4 is the best on the market. It has two Thunderbolt 4 connections for monitors, while the competition all have only one Thunderbolt 4 connection. The two connections allow for up to four 4k monitors at 60Mhz refresh rate. Many people also mention the CalDigit TS4 as a great option.

For desktop speakers, I would like a set which uses s/pidf or optical audio. I don't have a recommendation yet, but the Klipsh R-41PM might work well. Kanto speakers also look nice, with a nice wood finish, but not all models have s/pidf or optical audio.

For a keyboard, I am using the MacTigr from Das Keyboards. It is a mechanical keyboard designed with a Mac layout. Das also offers Dvorak keycaps, if that is your typing orientation. The only gripe I have is that I wish this keyboard had backlighting. Other Das keyboards do have backlighting, but not the MacTigr. Finally, I pair this with the Palm Rest One, which I think is a necessity. I am considering exploring the Keychron line, and also ergonomic keyboards such as the MoErgo Glove80 and the Dactyl Manuform, but I haven't tried them yet.

For a mouse, I use the Logitech MX Master 3 for Mac mouse. It also needs a good mousepad. I prefer hard plastic. For this, I use the Logitech-G G440 Gaming Mousepad. Previously, I used the SteelSeries QCK Hard Pad, which was also really good. Both are about equal in my opinion.

For headphones, I use the Bose QuietComfort headphones (formerly QuietComfort 45), although Bose recently came out with the QuietComfort Ultra. I am intrigued by the Das Holosonic T1w headphones, which are much cheaper and also connect over wifi in addition to bluetooth.

I use a generic bookstand that I bought on Amazon. There are plenty of other options.

A light is important to illuminate your workspace. BenQ Blue Genie LED Desk Lamp is a good choice. Although it is offered still on Amazon, BenQ apparently doesn't make it anymore. BenQ also offers the e-Reading Desk Lamp and a monitor lightbar called the ScreenBar Halo, either which might be a good option.

For work, I need to insert a security card in order to access certain websites. For this, I use the Cherry SmartTerminal ST-1144. It has a hefty weight and sits nicely on my desktop. Another option might be the HID Omnikey 3121. Follow the advice here for USB and here for USB-C. Don't buy any cheap Chinese crap on Amazon, because you never know what malware it contains.


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
