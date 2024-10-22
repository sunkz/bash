# system
alias l='ls -lh'
alias ll='ls -hl'
alias e='exit'
alias c='clear'
alias dsize='du -hd1'

# tools
alias srf='sudo open ~/Library/Preferences/com.apple.HIToolbox.plist'
alias ip='ipconfig getifaddr en0'

# dir
alias sc='cd ~/code/sc'
alias code='cd ~/code/'
alias blog='cd ~/code/blog'
alias api='cd ~/code/api'
alias sdkdir='cd ~/.sdkman/candidates'

# docker
alias ds='docker ps'
alias dp='docker-compose up'
alias dd='docker-compose down'

# maven
alias mdt='mvn dependency:tree'
alias mi='mvn install -DskipTests'
alias mc='mvn clean'
alias mcp='mvn clean package -DskipTests'
alias md='mvn deploy -DskipTests'
alias m2='cd ~/.m2/repository'
alias m2s='cd ~/.m2/repository/com/sunkz'


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
alias gv='git remote -v'
alias gg='bash ~/.deploy.sh'

# tools
alias nat='~/Downloads/cpolar http 9527'

# env
export PS1="[\[\e[32m\]\t\[\e[0m\] \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]]"

# terminal PS1 中显示 git 分支名字
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Git 自动补全
if [ -f ~/.git-completion.sh ]; then
    . ~/.git-completion.sh
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
