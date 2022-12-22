# Managing Environment Variables, Path, and Shells
---

## Terms to know:

- Terminal - the software with which you use the command line.
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

# Shell Config Files

Upon startup, the shell looks for config files. The order in which it looks depends on your computer and type of shell.
