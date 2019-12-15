#{- ~/.profile -}#

# Only execute this file once per shell
if [ -n "$__PROFILE_SOURCED" ]; then return; fi
export __PROFILE_SOURCED=1

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
if [ ! -w "$HOME/.history/sh" ]; then
	if [ ! -d "$HOME/.history" ]; then
		mkdir "$HOME/.history"
	fi
	touch "$HOME/.history/sh"
fi
export HISTSIZE=5000
export HISTFILE="$HOME/.history/sh"
export HISTFILESIZE=10000

if [ -r "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
	. "$HOME/.nix-profile/etc/profile.d/nix.sh"
fi
