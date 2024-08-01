# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"

export PATH=~/.npm-global/bin:$PATH
export PATH=/opt/homebrew/Cellar:$PATH


# Path to your oh-my-zsh installation.
export ZSH="/Users/dkoczka/.oh-my-zsh"

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

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source ~/.secrets.zsh
source $ZSH/oh-my-zsh.sh
# source ~/.zsh/catppuccin_macchiato-zsh-syntax-highlighting.zsh
source <(ng completion script)
source <(fzf --zsh)

# Aliases
alias l='lsd -l'
alias ls='lsd'
alias vim="nvim"
alias vi="nvim"
alias cat="bat"
alias zshrc="vi ~/.dotfiles/zsh/.zshrc"
alias tmuxrc="vi ~/.dotfiles/tmux/.tmux.conf"
alias nvimrc="vi ~/.dotfiles/nvim/"
alias alacrittyrc="vi ~/.dotfiles/alacritty/alacritty.toml"
alias sketchyrc="vi ~/.dotfiles/sketchybar/sketchybarrc"
alias restartsketchy="brew services restart sketchybar"

bindkey -s '^g' 'lazygit\n'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

PATH=~/.console-ninja/.bin:$PATH
