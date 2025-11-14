echo "온라인에서 서브버전(subversion) 다운로드"

dnf download --resolve --downloaddir=Downloads_subversion subversion

tar cvfz Downloads_subversion.tgz Downloads_subversion
