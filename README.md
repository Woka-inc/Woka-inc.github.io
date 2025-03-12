# Woka 기술 블로그

Jekyll 기반의 기술 블로그 소스 코드입니다.

## 개발 환경 설정

### 필수 요구사항
- Ruby 3.1.2
- Bundler 2.6.1

### 설치 및 빌드 방법

1. Ruby 환경 설정
```bash
# Ruby 3.1.2 설치
rbenv install 3.1.2
rbenv local 3.1.2

# Bundler 설치
gem install bundler -v 2.6.1
```

2. Jekyll 설치
```bash
gem install jekyll
```

3. 프로젝트 설정
```bash
# Ruby 플랫폼 설정 (필수)
bundle config set force_ruby_platform true

# 의존성 설치
bundle install
```

4. 빌드 디렉토리 권한 설정
```bash
# 빌드 대상 디렉토리 소유권 변경
sudo chown -R [사용자명]:[사용자명] /path/to/blog/destination

# 권한 설정
sudo chmod -R 755 /path/to/blog/destination
```

5. 블로그 빌드
```bash
bundle exec jekyll build --destination /path/to/blog/destination
```

## 문제 해결

### 의존성 문제 발생 시
```bash
bundle clean --force
bundle install
```

### SCSS 변환 오류 발생 시
- sass 관련 gem 버전 충돌이 있는지 확인
- `bundle clean --force` 후 `bundle install` 다시 실행

### 권한 문제 발생 시
- 대상 디렉토리의 소유권과 권한 확인
- 필요한 경우 `chown`과 `chmod` 명령어로 권한 수정

## 주의사항
- Gemfile의 버전을 수정하지 않도록 주의
- 빌드 전 반드시 대상 디렉토리의 권한 확인
- Ruby 3.1.2와 Bundler 2.6.1 버전 사용 권장 