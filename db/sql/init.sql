-- init.sql

-- 첫 번째 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS test1;
GRANT ALL PRIVILEGES ON test1.* TO 'himina1227'@'%' IDENTIFIED BY 'test123!@#';

-- 두 번째 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS test2;
GRANT ALL PRIVILEGES ON test2.* TO 'himina1227'@'%' IDENTIFIED BY 'test123!@#';

-- 세 번째 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS test3;
GRANT ALL PRIVILEGES ON test3.* TO 'himina1227'@'%' IDENTIFIED BY 'test123!@#';

-- 권한 적용
FLUSH PRIVILEGES;
