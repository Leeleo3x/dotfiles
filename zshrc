export ZSH="${HOME}/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

PROMPT='🦁%{$fg_bold[yellow]%}@%M %{$fg_bold[green]%}%p%{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}'
alias vim=nvim
alias vimdiff=nvim -d

case `uname` in
  Darwin)
    export BYOBU_PREFIX=/usr/local
  ;;
  Linux)
  ;;
esac
export CLICOLOR=1
export TERM=xterm-256color
export PATH="$(yarn global bin):$PATH"
if [[ -a ${ZDOTDIR:-${HOME}}/.zshrc-local ]]; then
  source "${ZDOTDIR:-${HOME}}/.zshrc-local"
fi
