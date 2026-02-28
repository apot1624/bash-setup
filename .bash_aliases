#PS1='\[\e[1;36m\][\D{%y-%m-%d}] \[\e[0m\]'"\`if [ \$? = 0 ]; then echo \[\e[1\;33m\]✓\[\e[0m\]; else echo \[\e[1\;31m\]✗\[\e[0m\]; fi\`"' \[\e[1;32m\]\w\[\e[0m\]\n\[\e[1;36m\][\t]\[\e[0m\] \[\e[1;35m\]$\[\e[0m\] '

alias mkcd='function __mkcd(){ if [ $# == 1 ]; then mkdir -p $1; cd $1; unset -f __mkcd; elif [ $# == 2 ]; then mkdir -p $1 $2; cd $2; unset -f __mkcd; fi }; __mkcd'
alias cdup='source ~/.cdup.sh'

alias tn='tmux new -s'
alias ta='tmux attach'
alias tt='tmux attach -t'
alias td='tmux detach'
alias tk='tmux kill-session -t'
alias tx='$HOME/.tmux/plugins/tmux-resurrect/scripts/save.sh; tmux kill-server'
alias ts='$HOME/.tmux/plugins/tmux-resurrect/scripts/save.sh'
alias tr='$HOME/.tmux/plugins/tmux-resurrect/scripts/restore.sh'
alias tl='tmux ls'
alias tj='tmux join-pane -t'

alias lm='source ~/.bash_vscode && lingma'
