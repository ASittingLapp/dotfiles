# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set theme
ZSH_THEME="agnoster"

# Set plugins
plugins=(
  fast-syntax-highlighting
  git
  jira
  npm
  osx
  vscode
  web-search
  you-should-use
)

source $ZSH/oh-my-zsh.sh

# fzf function definition for consistency
function fuz() {
  fzf --preview "bat --color=always {}"
}

# Set personal aliases, overriding those provided by oh-my-zsh libs,
alias zc="vim ~/dotfiles/.zshrc"
alias zsc="~/dotfiles/install/zsh.sh && source ~/.zshrc"
alias e='open -a Emacs.app'

alias vimf='vim $(fuz)'
alias codef='vscg $(fuz)'
alias rmf='rm $(fuz)'
alias ef='e $(fuz)'

alias gcd='git checkout dev'

# Fix python versions
alias python='python3'
alias pip='pip3'

# Agnoster overrides
prompt_context() {
  prompt_segment cyan $CURRENT_FG $USER
}
build_prompt() {
  RETVAL=$?
  prompt_status
  prompt_virtualenv
  prompt_aws
  # prompt_context
  prompt_dir
  prompt_git
  prompt_bzr
  prompt_hg
  prompt_end
}
# Set system variables
export BAT_THEME='dracula'
export EDITOR='vim'
export JIRA_URL="https://jira2.cerner.com"
export JIRA_PREFIX="rdmweb-"
export JIRA_DEFAULT_ACTION="branch"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -f -g ""'

# add Haskell bins to path
if [ -f "$HOME/.ghcup/env" ]; then
    source $HOME/.ghcup/env
fi

# source work specific config if it exists
if [ -f ~/.cerner_zshrc ]; then
    source ~/.cerner_zshrc
fi


