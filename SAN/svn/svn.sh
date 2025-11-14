#!/bin/bash
# -------------------------------------------------------------
# svn 서비스
# -------------------------------------------------------------

echo 'svn 서비스'

SVN_HOME="/SAN/svn"

PID_FILE="$SVN_HOME/svnserve.pid"

LISTEN_PORT=3690

ExecStart="/usr/bin/svnserve --daemon --pid-file=$PID_FILE -r $SVN_HOME --listen-port=$LISTEN_PORT"
