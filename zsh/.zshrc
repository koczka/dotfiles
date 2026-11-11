# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export NVM_DIR="$HOME/.nvm"
  [ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

export PATH=~/.npm-global/bin:$PATH
export PATH=/opt/homebrew/Cellar:$PATH
export PATH="/home/dkoczka/.local/bin:$PATH"

export BREW_HOME="/home/linuxbrew/.linuxbrew/bin"
export PATH="$PATH:$BREW_HOME"

# Path to your oh-my-zsh installation.
export ZSH="/home/dkoczka/.oh-my-zsh"

export NODE_TLS_REJECT_UNAUTHORIZED=0

# If you come from bash you might have to change your $PATH.
export TERM="xterm-256color"
export COLORTERM="24bit"

export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH="/opt/homebrew/bin:$PATH"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs)

ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_UPDATE_PROMPT="true"
DISABLE_MAGIC_FUNCTIONS=true
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source <(ng completion script)
source <(fzf --zsh)

# Aliases
alias l='lsd -l'
alias ls='lsd'
alias cat="bat"
alias zshrc="nvim ~/.dotfiles/zsh/.zshrc"
alias reloadzsh="source ~/.zshrc"
alias tmuxrc="nvim ~/.dotfiles/tmux/.tmux.conf"
alias nvimrc="nvim ~/.dotfiles/nvim/"
alias alacrittyrc="nvim ~/.dotfiles/alacritty/alacritty.toml"

bindkey -s '^g' 'lazygit\n'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
