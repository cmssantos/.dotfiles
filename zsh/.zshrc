# --------------------------------------------------
# Core
# --------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# --------------------------------------------------
# Performance
# --------------------------------------------------
DISABLE_AUTO_UPDATE="true"
DISABLE_MAGIC_FUNCTIONS="true"
COMPLETION_WAITING_DOTS="false"
ZSH_AUTOSUGGEST_USE_ASYNC="true"

# --------------------------------------------------
# Plugins
# --------------------------------------------------
plugins=(
  sudo
  git
  docker
  docker-compose
  z
  fzf
  colored-man-pages
  npm
  vscode
  history-substring-search
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"

# --------------------------------------------------
# Theme
# --------------------------------------------------
[[ -f "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"

# --------------------------------------------------
# Load modular config (~/.zsh)
# --------------------------------------------------
ZSH_CONFIG_DIR="$HOME/.zsh"

if [[ -d "$ZSH_CONFIG_DIR" ]]; then
  for file in "$ZSH_CONFIG_DIR"/*.zsh; do
    [[ -r "$file" ]] && source "$file"
  done
fi

