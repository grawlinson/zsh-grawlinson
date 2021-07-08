#
# aliases
#

# redirect history to STDOUT with correct timestamps
alias history='fc -il 1'

# safe(r) interactive commands
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# ls
if [[ -v OSTYPE ]]; then
  if [[ "$OSTYPE" == "linux"* ]]; then
    alias ls='ls --color=auto --human-readable --group-directories-first'
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    # check for coreutils presence, otherwise we're using bsd ls
    if command -v gls &> /dev/null; then
      alias ls='gls --color=auto --human-readable --group-directories-first'
    else
      alias ls='ls -G'
    fi
  fi
fi
alias l='ls -l'
alias la='ls -la'
alias lr='ls -lR'

# directories
setopt AUTO_CD # prefix command with 'cd' if it cannot be executed, e.g. '..' becomes 'cd ..'
alias ...='../..'
alias ....='../../..'
alias .....='../../../..'
alias ......='../../../../..'

# git
if command -v git &> /dev/null; then
  # status
  alias gst='git status'

  # add/commit
  alias gaa='git add --all'
  alias gcmsg='git commit -m'

  # log
  alias glg='git log --stat'
  alias glgp='git log --stat -p'
  alias glgg='git log --graph'
  alias glgga='git log --graph --decorate --all'
  alias glgm='git log --graph --max-count=10'

  # push/pull
  alias gp='git push'
  alias gl='git pull'

  # diff
  alias gd='git diff'
  alias gdca='git diff --cached'
fi

# pacman
if command -v pacman &> /dev/null; then
  # source: https://wiki.archlinux.org/index.php/Pacman_Tips
  alias pacupg='sudo pacman -Syu'
  alias pacin='sudo pacman -S'
  alias pacins='sudo pacman -U'
  alias pacre='sudo pacman -R'
  alias pacrem='sudo pacman -Rns'
  alias pacrep='pacman -Si'
  alias pacreps='pacman -Ss'
  alias pacloc='pacman -Qi'
  alias paclocs='pacman -Qs'
  alias pacinsd='sudo pacman -S --asdeps'
  alias pacmir='sudo pacman -Syy'
  alias paclsorphans='sudo pacman -Qdt'
  alias pacrmorphans='sudo pacman -Rs $(pacman -Qtdq)'
  alias pacfileupg='sudo pacman -Fy'
  alias pacfiles='pacman tFs'

  # list all explicitly installed packages
  # source: https://bbs.archlinux.org/viewtopic.php?id=93683
  paclist() {
    LC_ALL=C pacman -Qei $(pacman -Qu | cut -d " " -f 1) | \
      awk 'BEGIN {FS=":"} /^Name/{printf("\033[1;36m%s\033[1;37m", $2)} /^Description/{print $2}'
  }
fi

# vim: ft=zsh expandtab tabstop=2 shiftwidth=2
