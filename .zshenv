# Ubuntu make installation of Ubuntu Make binary symlink
PATH=/home/danhuynh/.local/share/umake/bin:$PATH
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$HOME/bin:$PATH
# Ubuntu make installation of Scala Lang
export PATH=/usr/local/heroku/bin:$PATH
export GOPATH=$HOME/Development/golang
export GOROOT=$HOME/.local/share/umake/go/go-lang
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin
export PATH=$HOME/.tmuxifier/bin:$PATH
export TMUXIFIER_LAYOUT_PATH="$HOME/.tmux-layouts"

if [ -z "$SSH_CONNECTION" ]; then
   case $OSTYPE in
   darwin*)
       export EMACSCLIENT=/Applications/Emacs.app/Contents/MacOS/bin/emacsclient
       alias emacsclient=$EMACSCLIENT
       ;;
   *)
       export EMACSCLIENT=emacsclient
       ;;
   esac
   # alias ec="$EMACSCLIENT -c -n"
   export EDITOR="$EMACSCLIENT -c"
   export ALTERNATE_EDITOR=""
else
    export EDITOR=$(type -P emacs || type -P vim || type -P vi)
fi
export VISUAL=$EDITOR

### Env for dev
