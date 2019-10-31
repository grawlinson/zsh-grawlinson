#
# colours
#

autoload -U colors && colors

# setup LS_COLORS
if [[ -z "$LS_COLORS" ]]; then
  (( $+commands[dircolors] )) && eval "$(dircolors -b)"
fi

# use LS_COLORS for completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# vim: ft=zsh expandtab tabstop=2 shiftwidth=2
