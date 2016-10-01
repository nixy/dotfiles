#{- ~/.bash_profile -}#

#{- PROMPT -}#

# Debugging prompt: (? ) in blue
export PS4='\[\033[1;34\]m?\[\033[0m\] '
# Selection prompt: (select: )
export PS3='select: '

#{- ENVIRONMENT VARIABLES -}#

# History preferences
export HISTSIZE=-1
export HISTFILESIZE=-1
export HISTFILE="$HOME/.history/bash"
export HISTCONTROL="erasedups:ignoreboth"

#{- SHELL OPTIONS -}#

# Append history to $HISTFILE when bash exits, instead of overwriting it
shopt -s histappend

# Attempt to preserve multi-line commands in history with embedded newlines
shopt -s cmdhist lithist


# When doing history substitution load the results into the buffer
shopt -s histverify

# When doing history substitution load a failed expression into the buffer
shopt -s histreedit


# Do a path search if a hashed command no longer exists
shopt -s checkhash


# Enable extended pattern matching for interactive use
shopt -s extglob

#{- SOURCING -}#


# Source ~/.profile if it exists and is readable
if [ -f "$HOME/.profile" ] && [ -r "$HOME/.profile" ]; then
	. "$HOME/.profile"
fi

# Source ~/.bashrc if it exists and is readable
if [ -f "$HOME/.bashrc" ] && [ -r "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
fi
