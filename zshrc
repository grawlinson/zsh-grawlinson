# setup umask [0755]
umask 0022

# ensure there are no duplicates in $PATH
typeset -U PATH path

# user files sourced before system files
# completions sourced after the functions they complete
fpath+=(
  "$ZDOTDIR/functions"
  "$ZDOTDIR/completions"
  "$ZDOTDIR/prompts"
  "$ZSYSDIR/functions"
  "$ZSYSDIR/completions"
  "$ZSYSDIR/prompts"
)

# drop-in directory (like /etc/zsh.d)
# sourceall iterates over APATH, sourcing every file it finds
typeset -T APATH apath
apath=(
  "$ZDOTDIR/source"
  "$ZSYSDIR/source"
)
autoload sourceall
sourceall zsh

# plugins (explicitly loaded)
# autosource iterates over SPATH until a matching plugin is found and sourced
typeset -T SPATH spath
spath=(
  "$ZDOTDIR/plugins"
  "$ZSYSDIR/plugins"
)
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
