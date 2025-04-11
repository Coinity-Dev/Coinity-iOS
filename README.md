# Coinity iOS 앱

## 프로젝트 소개
Coinity는 암호화폐 거래 및 시세 정보를 제공하는 iOS 앱입니다.

## 개발 환경
- Xcode 15.0+
- Swift 5.9+
- iOS 16.0+
- [Tuist](https://tuist.io) 4.48.0+

## 프로젝트 구조
Tuist를 사용하여 모듈화된 구조로 프로젝트를 설계했습니다.

### 모듈 구성
- **App (Coinity)**: 앱의 메인 타겟
- **Feature**: 기능 구현 모듈
- **Domain**: 비즈니스 로직 담당
- **Data**: 데이터 관리 및 네트워크 통신
- **DSKit**: 디자인 시스템 및 UI 컴포넌트
- **Core**: 유틸리티 및 공통 기능

## 개발 시작하기

### 필수 설치 항목
1. Tuist 설치:
```bash
curl -Ls https://install.tuist.io | bash
```

2. 의존성 설치 및 프로젝트 생성:
```bash
tuist install
tuist generate
```

## 코드 컨벤션
- SwiftLint를 사용하여 코드 스타일 유지
- MVVM 아키텍처 패턴 사용
