# completion configuration

# have the menu highlight as we cycle through options
zstyle ':completion:*' menu select
# case insensitive (all), partial-word and substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
# allow completion from within a word/phrase
setopt COMPLETE_IN_WORD
# when completing from the middle of a word, move cursor to end of word
setopt ALWAYS_TO_END
# turn on completion for aliases as well
setopt COMPLETE_ALIASES
# cycle through menus horizontally instead of vertically
#setopt LIST_ROWS_FIRST
# when using auto-complete, put the first option on the line immediately
#setopt MENU_COMPLETE

# complete . and .. special directories
zstyle ':completion:*' special-dirs true

# use caching so that commands like apt and dpkg complete are useable
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path "${ZCACHEDIR}"

# vim: ft=zsh expandtab tabstop=2 shiftwidth=2
