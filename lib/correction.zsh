alias man='nocorrect man'
alias mv='nocorrect mv'
alias mysql='nocorrect mysql'
alias mkdir='nocorrect mkdir'
alias gist='nocorrect gist'
alias heroku='nocorrect heroku'
alias ebuild='nocorrect ebuild'
alias hpodder='nocorrect hpodder'
alias sudo='nocorrect sudo'
alias vim='nocorrect vim'
alias aptitude='nocorrect aptitude'

if [[ "$ENABLE_CORRECTION" == "true" ]]; then
  setopt correct_all
fi
