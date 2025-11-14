#!/bin/bash
# -------------------------------------------------------------
# svn 서비스 중지
# -------------------------------------------------------------

source "$(dirname "$0")/svn.sh"

echo 'svn 서비스 중지'

#!/bin/bash
# ------------------------------------------------------
# svn_stop.sh
# svnserve 안전 종료 스크립트
# PID 파일 기반 종료, /bin/bash 및 grep 제외
# ------------------------------------------------------

# PID 파일 존재 확인
if [ ! -f "$PID_FILE" ]; then
    echo "PID 파일이 없습니다: $PID_FILE"
    echo "svnserve가 실행 중인지 확인해주세요."
    exit 1
fi

# PID 읽기
PID=$(cat "$PID_FILE")

# PID 존재 확인
if ! kill -0 "$PID" 2>/dev/null; then
    echo "PID $PID 프로세스 없음, 삭제 후 종료"
    rm -f "$PID_FILE"
    exit 0
fi

# 안전하게 종료
echo "Stopping svnserve PID=$PID ..."
kill "$PID"

# 종료 확인 (최대 5초 대기)
for i in {1..5}; do
    if ! kill -0 "$PID" 2>/dev/null; then
        echo "svnserve 종료 완료."
        rm -f "$PID_FILE"
        exit 0
    fi
    sleep 1
done

# 강제 종료
echo "강제 종료"
kill -9 "$PID"
rm -f "$PID_FILE"
echo "svnserve 종료 완료."
