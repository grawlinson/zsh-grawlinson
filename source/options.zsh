# general
setopt NO_BEEP              # disable terminal beep
setopt MULTI_OS             # pipe to multiple outputs
setopt INTERACTIVE_COMMENTS # allow comments in interactive shell
setopt VI                   # vi-like keybindings
#setopt KSH_ARRAYS           # whoever thought non-0 indices needs to be shot

# globbing
setopt NO_CASE_GLOB      # case insensitive globbing
setopt EXTENDED_GLOB     # enable zsh globbing features
setopt NUMERIC_GLOB_SORT # sort globs numerically, not by letter

# history
HISTSIZE=100000                # set history size to 100K
SAVEHIST="${HISTSIZE}"         # cap history size at 100K
setopt EXTENDED_HISTORY        # record timestamp on command in HISTFILE
setopt HIST_EXPIRE_DUPS_FIRST  # delete duplicates first when HISTFILE > HISTSIZE
setopt APPEND_HISTORY          # ignore duplicate commands in history list
setopt HIST_FIND_NO_DUPS       # when searching history don't display results already cycled through twice
setopt HIST_IGNORE_SPACE       # ignore commands that start with space
setopt HIST_VERIFY             # show command with history expansion to user before running it
setopt SHARE_HISTORY           # shares history across multiple zsh sessions, in real time
setopt HIST_IGNORE_ALL_DUPS    # do not write commands to history that are duplicates of the previous command
setopt HIST_REDUCE_BLANKS      # remove erroneous blanks from commands before appending to history

# create history file
[ -z "${HISTFILE}" ] && HISTFILE="${ZCACHEDIR}/zhistory"
