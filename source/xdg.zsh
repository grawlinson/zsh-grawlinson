#
# xdg base directory variables
#

# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html

if [ -z "${XDG_CONFIG_HOME}" ]; then
  export XDG_CONFIG_HOME="${HOME}/.config"
fi

if [ -z "${XDG_CACHE_HOME}" ]; then
  export XDG_CACHE_HOME="${HOME}/.cache"
fi

if [ -z "${XDG_DATA_HOME}" ]; then
  export XDG_DATA_HOME="${HOME}/.local/share"
fi

if [ -z "${XDG_STATE_HOME}" ]; then
  export XDG_STATE_HOME="${HOME}/.local/state"
fi

# XDG_RUNTIME_DIR is set when using pam_systemd
if [[ "$OSTYPE" == "darwin"* ]]; then
  export XDG_RUNTIME_DIR=/tmp
fi

# vim: ft=zsh expandtab tabstop=2 shiftwidth=2
