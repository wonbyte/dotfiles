# Load Antigen
source /usr/local/share/antigen/antigen.zsh

# Load NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Load Antigen configurations
antigen init ~/.antigenrc

alias clr="clear"
alias config='/usr/local/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
alias hist="history 1 | less"
alias vi="nvim"

export VAULT_ADDR=https://prod.vault.conde.io:443


alias luamake=/Users/gsierans/.cache/nvim/lspconfig/sumneko_lua/lua-language-server/3rd/luamake/luamake
