ZSH_DISABLE_COMPFIX=true

export ZSH="$HOME/.oh-my-zsh"
export EXA_ICON_SPACING=2

plugins=(git)

source $ZSH/oh-my-zsh.sh

# alias
alias ls="exa -l -a -h -m --git --icons --no-user --no-time"
alias man="tldr"
alias cat="bat"
alias ps="procs"
alias dig="dog"
alias du="dust"
# alias end

eval "$(fnm env --use-on-cd)"
eval "$(starship init zsh)"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
