export GPG_TTY=$(tty)

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
zstyle ':autocomplete:*' ignored-input '..##'
#source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~/.oh-my-posh/themes/mytheme.json)"
fi

autoload -Uz compinit && compinit

alias cls=clear
alias openremote='open $(git remote get-url origin)'

alias pwsh='pwsh -NoLogo'
alias finder='open -a finder'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
