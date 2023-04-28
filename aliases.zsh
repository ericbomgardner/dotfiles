# ~/.zshrc and alias management
alias openbash="open -t $ZSH_CUSTOM/aliases.zsh"
alias src="source ~/.zshrc"
alias zsh="source ~/.oh-my-zsh/oh-my-zsh.sh"

# git
alias gsl="git --no-pager stash list"
gsa() {
  echo "## commits past origin/master:"
  git --no-pager log origin/master..HEAD --oneline 2> /dev/null

  echo "## relevant stashes:"
  git --no-pager stash list | grep $(git rev-parse --abbrev-ref HEAD)
  git status
}

# terminal
alias clr="clear && gsa"
