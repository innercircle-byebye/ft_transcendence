# ft_transcendence
ft_transcendence for innercircle-byebye

## 개발 환경 구성 `setup-develop-env` 이용법

1. 메인레포 [(https://github.com/innercircle-byebye/ft_transcendence.git)](https://github.com/innercircle-byebye/ft_transcendence.git) 클론후 `setup-develop-env` 접근
2. setup.sh 실행하기
   1. are you front or back?
       - 자신이 속한 팀 `front` 나 `back` 입력
   2. please enter your forked repo URL 에 내가 fork뜬 레포 주소(.git 포함) 입력하기
   3. Repo 주소가 맞다면 y 입력
   4. 마지막으로 자신이 입력한 정보가 맞다면 y 입력
3. 화면에 출력된 스크립트를 그대로 복사해서 실행

    - 예) 내가 `front`이다
    ```
    rm -rf .gitmodules front back; git clone [내가 fork한 레포 주소] front; git clone [백엔드 팀 레포 주소] back
    ```

## 유의사항
- alias.sh 에 `docker compose` 실행을 위한 alias들을 등록 해 놓았습니다.
    - 파일을 열어 보시면 간락한 사용방법을 확인하실 수 있습니다.
    - `source ./alias.sh` 등의 명령어를 이용하여 현재 실행중인 프로세스(터미널) 위에서 명령어를 바로 입력하실 수 있습니다. (터미널 세션이 종료될 때마다 다시 실행 필요)
- 상대 팀의 레포가 업데이트 될 때 마다, 상대 팀 레포 디렉토리로 접근해 `main` 브랜치 `pull` 받아야 합니다.
    - 예) 내가 front 인데, back merge 된 코드가 생길떄마다 git pull 받기
- fork된 브랜치를 사용 하고 있기 때문에 내부에서 작업 하시던대로 작업 진행하시면 됩니다.
- 포크 한 레포에서 upstream 다시 등록하는것 까먹지 마세요

```
git remote add upstream [프론트/백 레포 주소]
```

## 푸시한 로컬 브랜치 다시 가져 오는법
https://cjh5414.github.io/get-git-remote-branch/
