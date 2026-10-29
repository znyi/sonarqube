# sonarqube

SonarQube 온프레미스 Docker Compose 설정입니다.

## 현재 버전
- SonarQube: [`26.5.0.122743-community`](https://hub.docker.com/_/sonarqube/tags?name=26.5.0.122743-community)
- CNES Report 플러그인: [`5.0.4`](https://github.com/cnescatlab/sonar-cnes-report/releases/tag/5.0.4)

SonarQube 버전 변경 시 `compose.yml`의 image 태그를 수정하세요.
CNES Report 플러그인 버전 변경 시 `download-cnes-report.sh`의 `VERSION` 값을 변경한 뒤 재다운로드하고, `compose.yml`의 JAR 파일명도 일치시켜야 합니다.

## 실행 방법

### 1. 환경 변수 설정
```bash
cp db.env.example db.env
cp sonarqube.env.example sonarqube.env
```
필요 시 각 `.env` 파일을 수정합니다.

### 2. TLS 인증서 설정
`nginx.conf`의 인증서 경로를 실제 경로로 변경하세요.

### 3. CNES Report 플러그인 다운로드
```bash
./download-cnes-report.sh
```

### 4. 컨테이너 실행
```bash
source ./load-env.sh && docker compose up -d
```