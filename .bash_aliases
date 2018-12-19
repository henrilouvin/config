# BASICS
alias l='ls -t --color=auto'
alias ls='ls --color=auto'
alias ll='ls -ltrh --color=auto'
alias lsl='ls -lh --color=auto'
alias df='df -h'
alias gp='gnuplot'
alias py='python'
alias grep='grep -rn --color=auto --exclude=tags'
alias vim='vim -p'
alias nvim='nvim -p'

#GIT
alias gitk='gitk --all'
alias gitl='git log --graph'

# LATEX
alias log='grep -A7 "^! " *log'
alias bilog='grep -A0 -e "^! " -e ".tex$" -e "^l." *log'

# TRIPOLI
alias t4='/volatile/home/hl237867/scott/t4/t4build/lin-x86-64-*/bin/*_tripoli4* -s NJOY -c /volatile/home/hl237867/scott/t4/nuclear_data/t4path.ceav5 -d'
alias t4d='/volatile/home/hl237867/scott/t4/t4dbuild/lin-x86-64-*/bin/*_tripoli4* -s NJOY -c /volatile/home/hl237867/scott/t4/nuclear_data/t4path.ceav5 -d'
alias t4g='/volatile/home/hl237867/scott/t4/t4build/lin-x86-64-*/bin/*_visutripoli4*'
alias flat_t4='/volatile/home/hl237867/scott/t4/t4build/lin-x86-64-*/bin/*_tripoli4* -s NJOY -c /volatile/home/hl237867/scott/t4/nuclear_data/flat_xs/t4path.analytical -l english -d'
alias count4='ps -e|egrep tripoli|wc -l'
alias countmenhir='ps -e|egrep menhir|wc -l'
alias killt4='pgrep -f 'tripoli' |xargs kill -2'
alias killt49='pgrep -f 'tripoli' |xargs kill -9'

# LAZY ALIASES
alias j='java'
alias g='git'
alias v='nvim'
alias ff='firefox'
alias jjar='java -jar'

# DOCKER
alias dockerclean='docker image prune'
alias dockercleanstopped='docker rm $(docker ps -a -q)'
alias dockerlogin='docker login -u svom svomtest.svom.fr:5443 -p'
