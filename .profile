#                       __ _ _
#      _ __  _ __ ___  / _(_| | ___
#     | '_ \| '__/ _ \| |_| | |/ _ \
#    _| |_) | | | (_) |  _| | |  __/
#   (_| .__/|_|  \___/|_| |_|_|\___|
#     |_|

# Set PATH so it includes Cabals's bin directory if it exists
if [ -d "$HOME/.cabal/bin" ] ; then
    PATH="$HOME/.cabal/bin:$PATH"
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*