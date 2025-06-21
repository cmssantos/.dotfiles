# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
# copydir
plugins=(
  git sudo colored-man-pages zsh-autosuggestions web-search copypath copyfile
  dirhistory history-substring-search alias-finder dotnet
  zsh-syntax-highlighting
)

# Path to your Oh My Zsh installation.
source $ZSH/oh-my-zsh.sh

# Path to ASDF-VM
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# Language and editor
export LANG=en_US.UTF-8
export EDITOR=code

# Source aliases
source ~/.aliases

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
