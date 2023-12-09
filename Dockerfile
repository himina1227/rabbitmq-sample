# MariaDB 버전을 선택합니다.
FROM mariadb:latest

# 환경 변수 설정
#ENV MARIADB_ROOT_PASSWORD=12341234
ENV MARIADB_USER=himina1227
ENV MARIADB_PASSWORD=12341234
ENV MARIADB_ALLOW_EMPTY_ROOT_PASSWORD=1
#ENV MARIADB_DATABASE=test

# 초기화 스크립트를 복사합니다.
COPY ./db/sql/init-db.sh /docker-entrypoint-initdb.d/
RUN chmod 766 /docker-entrypoint-initdb.d/init-db.sh
COPY ./db/sql/databases.sql /docker-entrypoint-initdb.d/

# 포트 오픈 (선택 사항)
EXPOSE 3306