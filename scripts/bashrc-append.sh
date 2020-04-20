# Get the aliases and functions
if [ -f ~/.bash/.bash_aliases ]; then
    . ~/.bash/.bash_aliases
fi

# Builds the prompt with git branch notifications.
if [ -f ~/.bash/.bash_prompt.sh ]; then
  source ~/.bash/.bash_prompt.sh
fi

# bash/zsh completion support for core Git.
if [ -f ~/.bash/.git-completion.bash ]; then
  source ~/.bash/.git-completion.bash
fi

# Loads scripts on terminal session login
if [ -f ~/.bash/.startup ]; then
  source ~/.bash/.startup
fi