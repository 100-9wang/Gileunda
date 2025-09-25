# 식물 판매 쇼핑몰 (Gileunda)

1인 프로젝트

**한 줄 소개**

JAVA 기반 JSP 웹 애플리케이션으로 식물의 상세한 정보 제공 및 가드닝 정보 제공을 통해 식물을 판매하는 플랫폼

---

## 프로젝트 기간 및 역할

- **기간:** 2024.11.11 ~ 2024.11.29
- **역할:**
    - JSP/Servlet 기반 웹 페이지 구현
    - 상품 관리 및 장바구니 기능 개발
    - Oracle DB 연동 및 SQL 쿼리 작성
    - 사용자 인증 및 주문 처리 로직 개발

---

## 사용 기술 스택

<img width="450" height="184" alt="Image" src="https://github.com/user-attachments/assets/d6e4cd32-a320-4755-9033-dcfb03a53f74" />

---

## 주요 기능 목표

1. **상품 관리**
    - 관리자 상품 등록, 수정, 삭제
    - 카테고리 분류 및 검색 기능
2. **장바구니**
    - 상품 추가/삭제 및 수량 조절
    - 장바구니 총액 계산 및 DB 연동
3. **주문 처리**
    - 주문 생성 및 상태 관리
    - 주문 내역 조회
4. **사용자 인증**
    - 회원 가입/로그인 기능
    - 관리자/일반 사용자 권한 구분

---

## 산출물 구성

### 설계 & 구조

<details>
  <summary>요구사항 정의서</summary>
    <img width="1373" height="566" alt="Image" src="https://github.com/user-attachments/assets/77a51c2b-5953-4b3c-8967-e8f0e0dda4c8" />
</details>    
<details>
  <summary>정보구조도</summary>
    <img width="916" height="602" alt="Image" src="https://github.com/user-attachments/assets/5a6b7cab-5d7d-4a98-86cc-5ca11d34e79f" />
<img width="1051" height="656" alt="Image" src="https://github.com/user-attachments/assets/8ce4532b-9bb7-4d5b-865e-e6d8078be4e9" />
</details>
<details>
  <summary>ERD</summary>
   <img width="679" height="525" alt="Image" src="https://github.com/user-attachments/assets/c4893394-03e5-4468-b7e3-ded3e4030802" />
</details>
<details>
  <summary>테이블 명세서</summary>
   <img width="863" height="450" alt="Image" src="https://github.com/user-attachments/assets/6e0d5133-0255-442b-a598-b590f77323e9" />
</details>
<details>
  <summary>와이어 프레임</summary>
   <img width="767" height="520" alt="Image" src="https://github.com/user-attachments/assets/81cb8923-09e3-4977-956b-17a9dea6fd19" />
</details>

---

## 트러블슈팅

- **사용자 인증 오류 (j_security_check)**
    - **문제:** 사용자 로그인 시 `j_security_check`를 통해 인증을 시도했지만, 등록된 사용자임에도 로그인 실패 발생.
    - **원인:** Apache Tomcat `tomcat-users.xml`에 사용자 계정과 역할(Role) 설정 누락, 또는 role 이름 불일치로 인해 인증 실패.
    - **해결 방안:**
        1. `tomcat-users.xml` 확인 및 사용자 계정 등록:
            
            ```xml
            <role rolename="user"/>
            <user username="testuser" password="test123" roles="user"/>
            
            ```
            
        2. `web.xml`에서 `security-constraint`와 `login-config` 설정 점검:
            
            ```xml
            <security-constraint>
                <web-resource-collection>
                    <web-resource-name>Protected Area</web-resource-name>
                    <url-pattern>/protected/*</url-pattern>
                </web-resource-collection>
                <auth-constraint>
                    <role-name>user</role-name>
                </auth-constraint>
            </security-constraint>
            
            <login-config>
                <auth-method>FORM</auth-method>
                <form-login-config>
                    <form-login-page>/login.jsp</form-login-page>
                    <form-error-page>/login-error.jsp</form-error-page>
                </form-login-config>
            </login-config>
            
            ```
            
        3. Tomcat 재시작 후 로그인 테스트 수행.
    - **성과:** 사용자 계정 100% 정상 로그인 가능, 기존 인증 실패 오류 해결.

---

## 결과물 & 시연

- 메인 페이지
<img width="673" height="422" alt="Image" src="https://github.com/user-attachments/assets/0e815e1f-e97a-4152-a9bc-f9b7f363bad8" />


- 로그인
<img width="656" height="459" alt="Image" src="https://github.com/user-attachments/assets/e7b87d3c-ab49-4f18-9139-d908b768dd15" />


- 상품 목록 페이지
<img width="665" height="492" alt="Image" src="https://github.com/user-attachments/assets/8c2ea191-6c8d-477c-83c3-ad571ffb536d" />


- 상품 상세 페이지
<img width="670" height="393" alt="Image" src="https://github.com/user-attachments/assets/4d3a10e1-0ba1-4f6b-b789-0949e836658d" />


- 장바구니 페이지
<img width="668" height="411" alt="Image" src="https://github.com/user-attachments/assets/1a620139-a01b-42c0-acc3-22fa6cae9a36" />


- 배송 정보 페이지
<img width="670" height="449" alt="Image" src="https://github.com/user-attachments/assets/628134e0-379f-4e33-a784-582a33369c2c" />


- 주문 확인 페이지
<img width="592" height="468" alt="Image" src="https://github.com/user-attachments/assets/fdba7a1b-b7dd-47b8-99f0-f1d21eb6cf96" />


- 주문 완료 페이지
<img width="598" height="382" alt="Image" src="https://github.com/user-attachments/assets/5e9a74c2-e462-414b-82e7-8aa2633ad75f" />


- 관리자 로그인
<img width="659" height="428" alt="Image" src="https://github.com/user-attachments/assets/44c1ec87-372a-49f3-a15e-1785a194acfc" />


- 상품 등록
<img width="661" height="575" alt="Image" src="https://github.com/user-attachments/assets/12d0d8da-a0d1-4bab-b674-4b63c2347257" />


- 상품 수정1
<img width="657" height="510" alt="Image" src="https://github.com/user-attachments/assets/cf77149e-cca7-4cc6-855a-2d69bebc2af0" />


- 상품 수정2
<img width="660" height="622" alt="Image" src="https://github.com/user-attachments/assets/f452a75d-0ffe-4215-89eb-d7e531ed51e2" />

---

## 향후 개선 계획

- 상품 검색 기능 강화 및 필터링
- 장바구니 및 주문 처리 성능 최적화
- 모바일 반응형 웹 구현
