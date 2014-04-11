if ! echo "$-" | grep >/dev/null i; then return; fi

umask 022

stty intr  '^C' erase '^?'
stty eof   '^D' # CTRL-D end-of-file
stty susp  '^Z' # CRTL-Z suspend a job
stty intr  '^C' # CTRL-C interrupt a job
stty start '^Q' # CTRL-Q start scrolling
stty stop  '^S' # CTRL-S stop scrolling
stty kill  '^U' # CTRL-U kill line buffer
stty erase '^?' # DEL key to erase

export set ignoreeof=true

export VISUAL=emacs
export EDITOR=emacs
export PAGER='less -R'
export PRINTER=
export XRSH_AUTH_TYPE=none

for i in ~/.sh/*_sh; do . $i; done

if [ -f ~/.sh/proj.state ]; then
    proj $(cat ~/.sh/proj.state)
else
    proj .
fi

cd .
