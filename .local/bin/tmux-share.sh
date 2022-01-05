#!/bin/bash

#
# based on https://medium.com/@art.vasilyev/sharing-tmux-session-with-other-users-a4175b13225
#
# Install:
#
#   - create user ${USER_VIEWER}
#
# IMPORTANT: read-only only enforced if you set the USER_VIEWER's ssh command
# access to only run this script!
#
#   /etc/ssh/sshd_config:
#
#   Match User ${USER_VIEWER}
#       ForceCommand _____
#

SHARED_SOCKET=/tmp/tmuxshare/shared_session
ALLOW_RW=/tmp/tmux-share-allow-rw
USER_VIEWER=tmuxshare

# if invoked with arg 'rw', allow USER_VIEWER to attach rw:

if [ "$1" == "rw" ]; then
	touch ${ALLOW_RW}
	sudo chown ${USER_VIEWER}:${USER_VIEWER} ${ALLOW_RW}
	exit
fi

# one-time setup, as sharer (assume viewer won't have sudo):

if [ ! -d `dirname ${SHARED_SOCKET}` ]; then
	sudo mkdir --mode=u+rwx,g+rs,g-w,o-rwx `dirname $SHARED_SOCKET`
	sudo chown `id -u`:${USER_VIEWER} `dirname $SHARED_SOCKET`
	touch ${SHARED_SOCKET}
	chmod g+rw ${SHARED_SOCKET}
fi

# sudo chown $USER:$USER_VIEWER $SHARED_SOCKET
# regular usage, no args:
#  - if sharer, attach to session, or create if doesn't exist
#  - if viewer, attach to session, as RO, unless ALLOW_RW
if [ -O ${SHARED_SOCKET} ]; then
	tmux -S ${SHARED_SOCKET} attach || tmux -S $SHARED_SOCKET
	chmod g+rw ${SHARED_SOCKET}
else
	sudo chmod g+rw ${SHARED_SOCKET}
	if [ -f ${ALLOW_RW} ]; then
		rm -f ${ALLOW_RW} && tmux -S ${SHARED_SOCKET} attach
	else
		tmux -S ${SHARED_SOCKET} attach -r
	fi
fi

