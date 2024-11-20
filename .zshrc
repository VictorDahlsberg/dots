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
alias dots='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
