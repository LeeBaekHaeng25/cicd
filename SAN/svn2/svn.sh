#!/bin/bash
# -------------------------------------------------------------
# svn2 서비스
# -------------------------------------------------------------

echo 'svn2 서비스'

SVN_HOME="/SAN/svn2"

PID_FILE="$SVN_HOME/svnserve.pid"

LISTEN_PORT=13690

ExecStart="/usr/bin/svnserve --daemon --pid-file=$PID_FILE -r $SVN_HOME --listen-port=$LISTEN_PORT"
