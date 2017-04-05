#{- ~/.profile -}#

#{- PROMPT -}#

magenta="\[\033[1;35m\]"
red="\[\033[1;31m\]"
no_color="\[\033[0m\]"

# Primary prompt: ($/# )
# Secondary prompt: (> )
# Primary prompt is magenta on local machines, red on remote hosts
case $(hostname) in
  pebble|stone|rock|boulder)
    export PS1="${magenta}\$${no_color} "
    export PS2="${red}>${no_color} "
    ;;
  *)
    export PS1="$red\$$no_color "
    export PS2="$magenta>$no_color "
    ;;
esac

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
if [ -w "$HOME/.history/sh" ]; then
	if [ ! -d "$HOME/.history" ]; then
		mkdir "$HOME/.history"
	fi
	touch "$HOME/.history/sh"
fi
export HISTFILE="$HOME/.history/sh"
export HISTSIZE=10000

#{- SOURCING -}#

# Source nix profile configuration
if [ -f "$HOME/.nix-profile/etc/profile.d/nix.sh" ] \
&& [ -r "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
  . "$HOME/.nix-profile/etc/profile.d/nix.sh"
fi
