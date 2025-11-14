#!/bin/bash
# -------------------------------------------------------------
# svn 서비스 상태
# -------------------------------------------------------------

source "$(dirname "$0")/svn.sh"

echo 'svn 서비스 상태'

cat "$PID_FILE"

ps -ef | grep "$SVN_HOME" | grep -v grep | grep -v "/bin/bash"
