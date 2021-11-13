# ft_transcendence
ft_transcendence for innercircle-byebye

## 평가 환경 (42 클러스터 컴퓨터)

21/11/23 기준

- docker 관련
	- docker 버전: 17.09.0
	- docker-compose 버전 1.16.1
		- docker-compose file format v2.3
	- docker-compose.yml 에서 환경변수를 읽어올 수 없음
		- 포트번호 절대값으로 지정
	- Dockerfile.dockerignore 기능 x (docker-compose file format v3에서 지원)
	- 프로덕션 환경이라는 가정 하에 환경변수명 `.env` 지정

- 평가 항목에 맞는 항목
	- 백엔드
		- 서비스 시작 시 seeding 처리
		- 서비스 시작시 synchronize: true 처리
