#{- ~/.profile -}#

#{- PROMPT -}#

# Primary prompt: ($/# ) in magenta
export PS1='\[\033[1;35m\]\$\[\033[0m\] '
# Secondary prompt: (> ) in red
export PS2='\[\033[1;31\]m>\[\033[0m\] '

#{- PATH -}#

# Prepend ~/.local/bin to the path and append the current directory to the path
export PATH="$HOME/.local/bin:$PATH:."

#{- ENVIRONMENT VARIABLES -}#

# Export language and sorting preferences.
export LANG="en_US.UTF-8"
export LC_COLLATE="C"

# Export editor preferences.
export EDITOR="vim"
export VISUAL="vim"

# Export pager preferences.
export PAGER="less"
export LESSHISTFILE="-"

# Export python preferences.
export PYTHONSTARTUP="$HOME/.pythonrc"

# History preferences
export HISTFILE="$HOME/.history/posh"
export HISTSIZE=10000

#{- SOURCING -}#

# Source nix profile configuration
if [ -f "$HOME/.nix-profile/etc/profile.d/nix.sh" ] \
&& [ -r "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
  . "$HOME/.nix-profile/etc/profile.d/nix.sh"
fi
