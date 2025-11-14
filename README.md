# cicd
전자정부 표준프레임워크 4.3 서버용 개발환경

4.3.0, 서버용 개발환경(Development Tool - Unix, Linux, Windows) Version 4.3.0, 릴리즈 일자 - 2025-03-06
- https://www.egovframe.go.kr/home/ntt/nttList.do?searchKey=&searchValue=&menuNo=94&bbsId=204&pagerOffset=10
- eGovCI-4.3.0-installation-guide.pdf

서버 개발환경 4.3.0 설치가이드
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:dev4.3:svrinstall
- [표준프레임워크] CI 및 Nexus 환경구축 가이드 v4.3
  - eGovCI-4.3.0-installation-guide.pdf
- SVN 설치 가이드(리눅스용)
  - svn-installation-guide.pdf

[svn-online-install.sh](svn-online-install.sh)

[svn-offline-install.sh](svn-offline-install.sh)

systemctl에서 firewalld 비활성화

```bash
systemctl status firewalld

systemctl stop firewalld

systemctl disable firewalld

systemctl status firewalld
```
