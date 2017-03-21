parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


export PS1="\[\033[35m\]\u\[\033[m\]@\[\033[32m\]\h\[\033[96m\]\$(parse_git_branch)\n\[\033[33m\]\w\[\033[m\] \$ "
export CLICOLOR=1

alias ls='ls --color -GFh'
LS_COLORS='di=94:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS


alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias vi='vim'
alias grep='grep --color=auto'

export EDITOR=vim

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
