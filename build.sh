#!/bin/bash

# 빌드 대상 경로 설정
DESTINATION="/home/woka/proj/woka-homepage/blog"

# 색상 코드 설정
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}[1/4]${NC} 의존성 정리 중..."
bundle clean --force

echo -e "${GREEN}[2/4]${NC} 의존성 설치 중..."
bundle install

echo -e "${GREEN}[3/4]${NC} 빌드 디렉토리 권한 설정 중..."
sudo chown -R woka:woka $DESTINATION
sudo chmod -R 755 $DESTINATION

echo -e "${GREEN}[4/4]${NC} Jekyll 블로그 빌드 중..."
bundle exec jekyll build --destination $DESTINATION

if [ $? -eq 0 ]; then
    echo -e "\n${GREEN}빌드 완료!${NC}"
    echo "블로그가 다음 경로에 빌드되었습니다: $DESTINATION"
else
    echo -e "\n${RED}빌드 실패!${NC}"
    echo "오류를 확인하고 다시 시도해주세요."
    exit 1
fi 