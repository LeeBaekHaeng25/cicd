echo "오프라인에서 서브버전(subversion) 설치"

tar xvfz Downloads_subversion.tgz

sudo rpm -ivh Downloads_subversion/*.rpm

#cat /usr/lib/systemd/system/svnserve.service

#cat /etc/sysconfig/svnserve

#/usr/bin/svnserve --help

# /SAN/svn/ 3690

sudo mkdir -p /SAN/svn/

sudo chown -R god:god /SAN/svn/

chmod -R 700 /SAN/svn/

svnadmin create /SAN/svn/repos

svnadmin create /SAN/svn/repos2

/SAN/svn/svn_start.sh

#/SAN/svn/svn_stop.sh

#/SAN/svn/svn_status.sh

#svn list svn://127.0.0.1/repos

#svn co svn://127.0.0.1/repos

#cd repos

#svn update

# /SAN/svn2/ 13690

sudo mkdir -p /SAN/svn2/

sudo chown -R god:god /SAN/svn2/

chmod -R 700 /SAN/svn2/

svnadmin create /SAN/svn2/repos

svnadmin create /SAN/svn2/repos2

/SAN/svn2/svn_start.sh

#/SAN/svn2/svn_stop.sh

#/SAN/svn2/svn_status.sh

#svn list svn://127.0.0.1:13690/repos

#svn co svn://127.0.0.1:13690/repos

#cd repos

#svn update

