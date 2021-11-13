# ft_transcendence
ft_transcendence for innercircle-byebye

## 평가 환경 (42 클러스터 컴퓨터)

21/11/23 기준

- docker 버전: 17.09.0

- docker-compose 버전 1.16.1
	- docker-compose file format v2.3

- 환경에 맞는 파일 구성을 위해 현재 브랜치 명 `eval`, 프론트엔드, 백엔드 레포 브랜치명 `eval`로 실행이 필요

- docker-compose.yml 에서 환경변수를 읽어올 수 없음
	- 포트번호 절대값으로 지정

- Dockerfile.dockerignore 기능 x (docker-compose file format v3에서 지원)

- 평가 항목에 맞는 항목
	- 백엔드
		- 서비스 시작 시 seeding 처리
		- 서비스 시작시 synchronize: true 처리
