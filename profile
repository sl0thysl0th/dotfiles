#
# Terminal
#

export TERMINAL='termite'

#
# Editors
#

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

#
# Language
#

export LANG='en_US.UTF-8'

#
# Path
#

export PATH=~/bin:$PATH

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Find lesspipe
if command -v lesspipe.sh >/dev/null 2>&1; then
    lesspipe="lesspipe.sh"
elif command -v lesspipe >/dev/null 2>&1; then
    lesspipe="lesspipe"
fi

# Set the less input preprocessor.
if [[ -z "$lesspipe" ]]; then
  export LESSOPEN="| $lesspipe %s 2>&-"
fi

#
# Temporary Files
#

if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$LOGNAME"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"

#
# Python
#

# Set the default project directory for virtualenvwrapper.
export PROJECT_HOME="$HOME/projects"

# Set the default virtualenvwrapper options.
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

#
# Notes
#

# Set the default note directory.
export NOTEDIR=~/documents/notes

#
# Passwords
#

# Set the alternative pass directory.
export ALTPASSDIR=~/projects/tad/pass

#
# Misc
#

# Set the dmenu font.
export DMENU_OPTIONS="-fn -xos4-terminus-medium-r-*-*-14-*"

# Source credentials.
if [ -f ~/.keys/creds.sh ]; then
    source ~/.keys/creds.sh
fi

# Disable QT5 DPI scaling
export QT_AUTO_SCREEN_SCALE_FACTOR=0
