GIT_COMPLETION_PATH=/etc/git-completion.bash
if [ -f $GIT_COMPLETION_PATH ]; then
  . $GIT_COMPLETION_PATH
  GIT_PS1_SHOWDIRTYSTATE=true # */+ for dirty
  GIT_PS1_SHOWSTASHSTATE=true # $ for stashes
  GIT_PS1_SHOWUNTRACKEDFILES=true # % for untracked
fi

# Source .bashrc
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# Add bin to path
if [ -d ~/bin ] ; then
    USR_BIN=$HOME/bin
    PATH=${USR_BIN}/drive/:${USR_BIN}/bash/:${USR_BIN}/backup:"${PATH}"
fi
export USR_BIN
export PATH