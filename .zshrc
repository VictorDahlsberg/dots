# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
alias ls="ls --color=auto"
export ZVM_VI_INSERT_ESCAPE_BINDKEY="jk"
export ZVM_VI_VISUAL_ESCAPE_BINDKEY="jk"
export ZVM_VI_EDITOR="nvim"
export PATH="$HOME/.local/bin:$PATH"
eval "$(zoxide init zsh --cmd cd)"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
autoload -Uz compinit && compinit
source ~/.zsh-plugins/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh-plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
alias dots='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
