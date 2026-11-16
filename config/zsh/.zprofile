# The following lines were added by Docker Desktop to add commands to your PATH.
[[ -d "$HOME/.docker/bin" ]] && path+=("$HOME/.docker/bin")
# End of Docker Desktop section.

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# Jetbrains Toolbox
[[ -d "$HOME/Library/Application Support/JetBrains/Toolbox/scripts" ]] && path+=("$HOME/Library/Application Support/JetBrains/Toolbox/scripts")
