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
	- db volume 지정시 에러 발생으로 volume 맵핑 삭제

- 기타
	- db 설정을 위한 `/db_conf/init_db.sh` 생성
		- 컨테이너가 실행될 때 자동으로 시작됩니다.

- 평가 항목에 맞는 항목
	- 백엔드
		- 서비스 시작 시 seeding 처리
		- 서비스 시작시 synchronize: true 처리
