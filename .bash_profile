# system
alias ll='ls -lh'
alias e='exit'
alias c='clear'
alias dsize='du -hd1'

# dir
alias sc='cd ~/Code/sc'
alias code='cd ~/Code/'

# docker
alias dp='docker-compose up'
alias dd='docker-compose down'

# maven
alias mvnd='mvn dependency:tree'
alias mi='mvn install -DskipTests'
alias mc='mvn clean'
alias mcp='mvn clean package -DskipTests'
alias md='mvn deploy -DskipTests'

# git
alias gam='git commit -am '
alias gc='bash ~/.git-checkout.sh'
alias gcd='git checkout develop'
alias gd='git diff'
alias gp='git pull'
alias gl='git log'
alias gh='git push'
alias gr='git reset --hard head'
alias gs='git status'
alias gb='git branch'
alias gg='bash ~/.deploy.sh'

# tools
alias nat='ngrok http 9527 --log=stdout > ngrok.log &'

# env
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home
export CLASS_PATH=$/JAVA_HOME/lib
export M2_HOME=/Users/sunkezheng/Library/apache-maven-3.9.1
export PATH=$JAVA_HOME/bin:$M2_HOME/bin:$PATH

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
export PS1="[\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]]"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if [ -f ~/.git-completion.sh ]; then
    . ~/.git-completion.sh
fi

___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh";
if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then
    . "${___MY_VMOPTIONS_SHELL_FILE}";
fi
