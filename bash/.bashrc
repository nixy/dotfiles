#{- ~/.bashrc -}#

#{- PROMPT -}#

red="\[\033[1;31m\]"
green="\[\033[1;32m\]"
yellow="\[\033[1;33m\]"
blue="\[\033[1;34m\]"
magenta="\[\033[1;35m\]"
cyan="\[\033[1;36m\]"
no_color="\[\033[0m\]"

# Interactive Prompt: "$ " in green
export PS1="${green}\$${no_color} "
if [ "${HOSTNAME}" != "crypt" ]; then
  PS1="${PS1}${blue}${HOSTNAME} ${PS1}"
fi

# Continuation Prompt: "> " in cyan
export PS2="${cyan}>${no_color} "
# Debugging Prompt: "# " in blue
export PS4="${blue}#${no_color} "

#{- HISTORY -}#

#shopt -s histappend
#export PROMPT_COMMAND="history -a; histroy -c; history -r; $PROMPT_COMMAND"

export HISTCONTROL="ignoreboth:erasedups"
shopt -s histappend
export PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"


#{- SOURCING -}#


# Source profile, if it hasn't already been loaded
if [ -z "$__PROFILE_DONE" ]; then
  . $HOME/.profile
fi

# Source .env to extend with secret/sensitive environment variables if it exists
if [ -r "$HOME/.env" ]; then
  . "$HOME/.env"
fi


# Source aliases, if they exist
if [ -f "$HOME/.aliases" ] && [ -r "$HOME/.aliases" ]; then
  . "$HOME/.aliases"
fi

# Source private aliases, if they exist
if [ -f "$HOME/.private_aliases" ] && [ -r "$HOME/.private_aliases" ]; then
  . "$HOME/.private_aliases"
fi

# Source functions, if they exist
if [ -f "$HOME/.functions" ] && [ -r "$HOME/.functions" ]; then
  . "$HOME/.functions"
fi

# Source private functions, if they exist
if [ -f "$HOME/.private_functions" ] && [ -r "$HOME/.private_functions" ]; then
  . "$HOME/.private_functions"
fi

if $(which direnv &> /dev/null); then
  eval "$(direnv hook bash)"
fi
