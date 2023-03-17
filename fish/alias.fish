## Useful aliases
# Replace ls with exa
alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.="exa -a | egrep '^\.'"                                     # show only dotfiles
alias ip="ip -color"

# Kitty
alias icat="kitty +kitten icat"

# apps... but better
alias cat='bat --style header --style snip --style changes --style header'
[ ! -x /usr/bin/yay ] && [ -x /usr/bin/paru ] && alias yay='paru'
alias git="hub"
alias vi="nvim"
alias svi="sudo nvim"

# Power
alias poweroff="loginctl poweroff"
alias reboot="loginctl reboot"
abbr -a --global po "poweroff"
abbr -a rb "reboot"

# Clear & Exit
abbr -a cl "clear"
abbr -a ex "exit"
abbr -a :q "exit"

# Common use
alias grubup="sudo update-grub"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias tarnow='tar -acf '
alias untar='tar -xvf '
alias wget='wget -c '
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='grep -F --color=auto'
alias egrep='grep -E --color=auto'
alias hw='hwinfo --short'                          # Hardware Info

# Git
abbr -a gs  git status -sb
abbr -a ga  git add
abbr -a gc  git commit
abbr -a gcm git commit -m
abbr -a gca git commit --amend
abbr -a gcl git clone
abbr -a gco git checkout
abbr -a gp  git push
abbr -a gpl git pull
abbr -a gl  git l
abbr -a gd  git diff
abbr -a gds git diff --staged
abbr -a gr  git rebase -i HEAD~15
abbr -a gf  git fetch
abbr -a gfc git findcommit
abbr -a gfm git findmessage
abbr -a gco git checkout

# Yadm
abbr -a ys  yadm status -s -b
abbr -a ya  yadm add
abbr -a yc  yadm commit
abbr -a ycm yadm commit -m
abbr -a yp  yadm push
abbr -a yl  yadm l
abbr -a yd  yadm diff
abbr -a yds yadm diff --staged

# Clang
abbr -a clang++ "clang++ -std=c++2a"

# Unzip (Microsoft Encoding)
abbr -a uzw "unzip -O cp936"

# Ranger
abbr -a ra "ranger"

# Hugo
abbr --add --global hugo "hugo --enableGitInfo"

# Misc
alias reload='exec fish'

# Iwd
alias iwsg="iwctl station wlan0 scan && iwctl station wlan0 get-networks"
alias iwreload="rc-service iwd restart && iwctl station wlan0 scan && iwctl station wlan0 get-networks"
alias connect1="iwctl --passphrase 11qqaazz station wlan0 connect TPE-Free"
alias connect2="iwctl --passphrase ntulnlmd712 station wlan0 connect md712"
alias connect3="iwctl --passphrase szuhannaichieh station wlan0 connect JLiao"

# OpenRC
alias rc-service="sudo rc-service"
alias rc-update="sudo rc-update"

# Nftables
alias nft="sudo nft"

# Doas
# alias sudo="doas"

# CMatrix
alias cmatrix="cmatrix -ba"
