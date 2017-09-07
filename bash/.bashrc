#{- ~/.bashrc -}#

#{- SOURCING -}#

# Source aliases
if [ -f "$HOME/.aliases" ] && [ -r "$HOME/.aliases" ]; then
  . "$HOME/.aliases"
fi

# Source private aliases
if [ -f "$HOME/.private_aliases" ] && [ -r "$HOME/.private_aliases" ]; then
  . "$HOME/.private_aliases"
fi

# Source functions
if [ -f "$HOME/.functions" ] && [ -r "$HOME/.functions" ]; then
  . "$HOME/.functions"
fi

# Source private functions
if [ -f "$HOME/.private_functions" ] && [ -r "$HOME/.private_functions" ]; then
  . "$HOME/.private_functions"
fi
