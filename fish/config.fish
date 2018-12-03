# Main fish config

# OMF

# omf install budspencer
set -U fish_key_bindings fish_vi_key_bindings
set -U budspencer_nogreeting

# GO

if test -e /snap/bin/go
        set -x GOPATH $HOME/go
        set -x GOBIN $GOPATH/bin
	set -x GOROOT /snap/go/current
        # I know fish has a mech to set the path elsewhere.
        # This makes it portable when I setup new systems.

	## When using the SNAP, no need to add `/snap/bin`
	## as it already exists in the PATH.
	#set PATH /snap/bin $GOBIN $PATH
	set PATH $GOBIN $PATH

        # Create GOPATH structure if it does not exist
        if test ! -d $GOPATH/src/github.com/bashfulrobot
                mkdir -p $GOPATH/{src/github.com/bashfulrobot,pkg,bin}
        end
end


# SNAPCRAFT

set -x SNAPCRAFT_CONTAINER_BUILDS 1

# NTFY / Telegram-send PIP packages
# telegram-send is now in /usr/local/bin

#set PATH /home/dustin/.local/bin $PATH

# RESTIC

#. $HOME/.restic.fish

