# Managing Environment Variables, Path, and Shells
---

## Terms to know:

- Terminal - the software with which you use the command line. It is actually a terminal emulator--a program that emulates a video terminal within some other display architecture. The terminal emulator provides a way to run a shell, which in turn runs command line programs. The terminal emulator is the window in which you type commands. The shell is the program that interprets the commands and runs the programs. In the old days, the terminal was a physical device, but now it is a software program.
- Shell - the command line software that runs in the terminal; can implement shell scripting and run programs.
- Shell profiles / config files - shell scripts which the shell runs upon startup which tell it how to set up the environment--such as how to set the path and what to assign to environment variables.
- Path - the set of locations, which are given to the shell to look for applications.
- Environment variables - the set of instructions, which are given to the shell, to tell it how to set up the shell environment. Environment variables include:
  - USER – This points to the currently logged-in user.
  - HOME – This shows the home directory of the current user.
  - SHELL – This stores the path of the current user’s shell, such as bash or zsh.
  - LANG – This variable points to the current language/locales settings.
  - MAIL – This shows the location of where the current user’s mail is stored.\
To display all the environment variables defined for a current session, use the shell command `env`.


## Environment Variables

The command used to display all the environment variables defined for a current session is `env`.

There are two ways to print a single already-defined environment variable:\
`printenv VARIABLE_NAME`\
`echo $VARIABLE_NAME`\
For example, to see the shell that you are currently using:\
`echo $SHELL

The basic syntax to define an environment variable is as follows:\
`export VARIABLE_NAME=value`\
You can also create a global variable using the same syntax:\
`export GLOBAL_VARIABLE='value'`

The variables defined using this method are stored for the current session only. They won't be available for the next session.

## Shell Config Files

Environment variables, aliases, and path definitions are permanently stored by putting them in the shell config files. Upon startup, the shell looks for config files and executes the contents in order. The order in which it looks for config files depends on your computer and type of shell.

For a Mac using BASH, the config files are read in order: /etc/paths; /etc/paths.d; ~/.bash_profile.\
In the ~/.bash_profile, there are two ways to add paths to the PATH variable.\
`export PATH="/some/location/bin:$PATH"` tells the shell to put this path at the front of the PATH variable, even in front of the paths located in /etc/paths and /etc/paths.d.\
`export PATH="$PATH:/some/location/bin"` tells the shell to put this path at the back of the PATH variable.\
Print and review the PATH variable by using `echo $PATH | tr : '\n'`. BASH will look for applications in the order of the PATH directories and will run the first version it finds.

For a Mac using ZSH, the config files are read in order: /etc/paths; /etc/paths.d;


Managing the order of the paths in the PATH variable is important to ensure the shell will run the correct application.




