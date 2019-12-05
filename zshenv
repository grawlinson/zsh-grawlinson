# set environment variable $ZDOTDIR to $HOME/.config/zsh
export ZDOTDIR="${HOME}/.config/zsh"
# set environment variable $ZCACHEDIR to $HOME/.cache/zsh
export ZCACHEDIR="${HOME}/.cache/zsh"
# set environment variable $ZSYSDIR to /usr/share/zsh-grawlinson
export ZSYSDIR="/usr/share/zsh-grawlinson"

# create missing folders
if [ ! -d "${ZDOTDIR}" ]; then mkdir -p "${ZDOTDIR}"; fi
if [ ! -d "${ZCACHEDIR}" ]; then mkdir -p "${ZCACHEDIR}"; fi

# create empty zshrc if it does not exist
if [ ! -e "${ZDOTDIR}/.zshrc" ]; then touch "${ZDOTDIR}/.zshrc"; fi

# vim: ft=zsh expandtab tabstop=2 shiftwidth=2
