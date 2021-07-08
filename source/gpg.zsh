# From gpg-agent(1):
#
# You should always add the following lines to your .bashrc  or  whatever
# initialization file is used for all shell invocations:
#
#   GPG_TTY=$(tty)
#   export GPG_TTY
#
# It is important that this environment variable always reflects the out‐
# put of the tty command.

if command -v gpg-agent &> /dev/null; then
  GPG_TTY=$(tty)
  export GPG_TTY
fi

# vim: ft=zsh expandtab tabstop=2 shiftwidth=2
