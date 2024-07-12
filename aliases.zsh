# ~/.zshrc and alias management
alias openbash="open -t $ZSH_CUSTOM/aliases.zsh"
alias catbash="cat $ZSH_CUSTOM/aliases.zsh"
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
alias glo='git --no-pager log --format="%C(auto)%h %s" -n20'
alias gsm="git --no-pager log origin/main..HEAD --reverse --pretty=tformat:'- %s'"
alias gsc="git --no-pager log origin/main..HEAD --reverse --pretty=tformat:'- %s (%h)'"
alias gb="git --no-pager branch"
alias gsup=ggsup  # AKA git branch --set-upstream-to=origin/$(git_current_branch)
alias gup="git up"

# terminal
alias clr="clear && gsa"
