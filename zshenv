# set environment variables to conform with XDG base directory specification
export ZDOTDIR="${HOME}/.config/zsh"
export ZCACHEDIR="${HOME}/.cache/zsh"

# set framework location
export ZSYSDIR="/usr/share/zsh-grawlinson"

# create missing folders
if [ ! -d "${ZDOTDIR}" ]; then mkdir -p "${ZDOTDIR}"; fi
if [ ! -d "${ZCACHEDIR}" ]; then mkdir -p "${ZCACHEDIR}"; fi

# create empty zshrc if it does not exist
if [ ! -e "${ZDOTDIR}/.zshrc" ]; then touch "${ZDOTDIR}/.zshrc"; fi

# vim: ft=zsh expandtab tabstop=2 shiftwidth=2
