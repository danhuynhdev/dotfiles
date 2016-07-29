export PATH="/home/danhuynh/.nvm/versions/node/v5.9.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export GOPATH=$HOME/Development/golang
export GOROOT=$HOME/.local/share/umake/go/go-lang
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.composer/vendor/bin:$HOME/bin

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
