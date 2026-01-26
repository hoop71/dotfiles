# Alias Library - Optional aliases you can enable
# Uncomment the sections you want to use, or copy to ~/.zshrc.local

# ============================================
# Git Aliases (Extended)
# ============================================
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gl='git log --oneline --graph --decorate'
alias gla='git log --oneline --graph --decorate --all'
alias gb='git branch'
alias gco='git checkout'
alias gst='git stash'
alias gstp='git stash pop'

# ============================================
# Safety Aliases
# ============================================
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

# ============================================
# Docker Aliases
# ============================================
# alias d='docker'
# alias dc='docker-compose'
# alias dps='docker ps'
# alias dpsa='docker ps -a'
# alias di='docker images'
# alias dex='docker exec -it'
# alias dlog='docker logs -f'

# ============================================
# Kubernetes Aliases
# ============================================
# alias k='kubectl'
# alias kgp='kubectl get pods'
# alias kgs='kubectl get services'
# alias kd='kubectl describe'
# alias kl='kubectl logs -f'

# ============================================
# Utilities
# ============================================
alias reload='exec zsh'
alias path='echo $PATH | tr ":" "\n"'
alias h='history | grep'
alias ports='lsof -i -P | grep LISTEN'
alias port='lsof -i :'
# alias myip='curl -s https://api.ipify.org'
# alias weather='curl wttr.in'
# alias serve='python3 -m http.server'

# ============================================
# Common Typos
# ============================================
# alias sl='ls'
# alias gti='git'
# alias claer='clear'
