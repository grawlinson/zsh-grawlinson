# setup umask [0755]
umask 0022

# spath -> plugins; apath -> drop-in path
typeset -T SPATH spath
typeset -T APATH apath
typeset -U PATH path # discard duplicates

# example: append to path, then make available to child processes
# path+=('$VAR'); export PATH

# default path values
spath=(
  "$ZDOTDIR/plugins"
  "$ZSYSDIR/plugins"
)
apath=(
  "$ZDOTDIR/source"
  "$ZSYSDIR/source"
)


# user stuff comes first
# completions come after the functions they complete
fpath+=(
  "$ZDOTDIR/functions"
  "$ZDOTDIR/completions"
  "$ZDOTDIR/prompts"
  "$ZSYSDIR/functions"
  "$ZSYSDIR/completions"
  "$ZSYSDIR/prompts"
)

# source every zsh file in every APATH directory
autoload sourceall
sourceall zsh

# plugins
autoload autosource
autosource coloured-man
autosource sudo

# setup ys prompt
autoload -Uz promptinit && promptinit
prompt ys

# source local zshrc
[[ -f "$ZDOTDIR/zshrc.local" ]] && . "$ZDOTDIR/zshrc.local"

# setup compinit
autoload -U compinit
compinit -i -d "${ZCACHEDIR}/zcompdump-${ZSH_VERSION}"

# vim: ft=zsh expandtab tabstop=2 shiftwidth=2
