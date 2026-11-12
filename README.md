# 🌿 포근섬 · Pogeun Island

**오늘도, 느긋하게.** 바람이 머무는 작은 3D 섬에서 산책하고, 동물 친구와 인사하고, 나만의 정원을 꾸며 보세요.

브라우저에서 실행되는 싱글 플레이 웹 게임입니다. 별도 서버나 계정, API 키 없이 GitHub Pages에 공개할 수 있습니다.

## 할 수 있는 것

- 실제 3D 섬 탐험: 집 세 채, 숲, 산책길, 광장, 부두와 작은 배.
- 모모(토끼), 밤이(곰), 나루(고양이)와 대화.
- 섬 곳곳에 떨어진 복숭아 여덟 개 수집.
- 집 앞 세 자리에 화분·의자·울타리 배치 및 교체.
- 오늘의 작은 일 세 가지 달성 현황 표시.
- 현재 위치 지도, 가방, 화면 확대/축소, 햇살/노을 전환.
- 브라우저 자동 저장 및 수동 저장.
- PC 키보드와 휴대폰 터치 버튼 지원.

현재 다른 이용자와의 동시 접속, 채팅, 로그인, 기기 간 저장 공유는 제공하지 않습니다. 집과 우체국은 마을의 외관이며 실내 진입 기능은 없습니다. 장식은 자유롭게 사용할 수 있고 복숭아를 소모하지 않습니다.

## 내 컴퓨터에서 실행

1. [Node.js](https://nodejs.org/) 22.12 이상을 설치합니다.
2. Windows에서는 **`포근섬 실행.cmd`를 더블클릭**하면 준비 후 브라우저가 열립니다. 처음에는 인터넷 연결이 필요합니다. 열린 실행 창을 닫으면 앱도 종료됩니다.
3. 또는 이 폴더에서 터미널을 열고 아래를 차례로 실행합니다.

```sh
npm ci
npm run dev
```

터미널에 나온 주소를 브라우저에서 엽니다. 기본 주소는 `http://127.0.0.1:5173/`입니다. 이미 사용 중이면 다른 포트가 표시될 수 있습니다.

`index.html`을 더블클릭하는 방식으로는 실행되지 않습니다. 개발 서버 또는 GitHub Pages 주소를 이용해 주세요.

## 조작

| 행동 | 방법 |
| --- | --- |
| 이동 | 방향키 / WASD / 화면 왼쪽 아래 방향 버튼 |
| 대화·수집 | 대상 가까이에서 E / 화면에 나타나는 행동 버튼 |
| 정원 꾸미기 | 오른쪽 ‘꾸미기’ → 자리 선택 → 장식 선택 |
| 가방 확인 | 오른쪽 ‘가방’ |
| 지도 확대 | 오른쪽 위 작은 지도 클릭 |
| 시간 분위기 | 오른쪽 ‘햇살’ / ‘노을’ |
| 확대·축소 | 오른쪽 + / − |
| 창 닫기 | 닫기 버튼 / Esc |

이동 방향은 화면을 기준으로 합니다. 나무와 집, 물을 통과할 수 없습니다. 부두와 배는 풍경 요소입니다.

## GitHub에 올리기 — GitHub Desktop 이용

1. [GitHub](https://github.com/) 계정과 [GitHub Desktop](https://desktop.github.com/)을 준비합니다.
2. 이 프로젝트가 ZIP이라면 먼저 새 폴더에 압축을 풉니다.
3. GitHub Desktop에서 **File → Add local repository**로 프로젝트 폴더를 선택합니다. 저장소가 아니라는 안내가 나오면 **create a repository here**를 선택해 이 폴더에 저장소를 만듭니다. 이미 저장소라면 그대로 추가합니다.
4. 변경 파일을 확인하고 `Initial version of Pogeun Island` 같은 설명을 적어 **Commit to main**을 누릅니다. 저장소 생성 과정에서 최초 커밋이 만들어졌다면 이 단계를 건너뛸 수 있습니다.
5. **Publish repository**를 누릅니다. 저장소 이름은 `pogeun-island` 등을 사용할 수 있습니다. 무료 계정에서 Pages로 공개하려면 공개 저장소를 선택합니다. 공개 시 소스 코드도 누구나 볼 수 있습니다.
6. 브라우저에서 해당 저장소의 **Settings → Pages → Build and deployment → Source → GitHub Actions**를 선택합니다.
7. **Actions → Deploy Pogeun Island to GitHub Pages → Run workflow**를 눌러 배포합니다. 이후 `main` 또는 `master` 브랜치에 올리는 변경은 자동 배포됩니다.
8. 배포가 성공하면 **Settings → Pages**의 사이트 주소를 엽니다.

예시 주소 형식은 `https://내계정.github.io/pogeun-island/`입니다. 실제 주소는 GitHub가 표시한 값을 사용하세요.

**확인:** 저장소에 `.github/workflows/deploy.yml`, `package-lock.json`, `src`, `public`이 포함되어야 합니다. `node_modules`, `dist`, `.env`, ZIP 파일은 소스 저장소에 올리지 않습니다. 숨김 폴더인 `.github`를 빠뜨리지 마세요.

자동 배포가 실패하면 먼저 Pages의 Source가 **GitHub Actions**인지 확인합니다. 계정·조직 정책에서 Actions 또는 Pages를 막은 경우 해당 설정을 확인해야 합니다. 제공된 배포 설정은 GitHub에 업로드한 뒤 실행되는 것이며, 제작 시점에 사용자의 GitHub 계정에서 실행한 것은 아닙니다.

저장소 이름을 바꿔도 자원 경로가 맞도록 Vite의 `base`는 `./`로 설정했습니다.

## 터미널로 GitHub에 올리는 경우

GitHub에서 README를 추가하지 않은 빈 저장소를 먼저 만들고 실행합니다. 이미 Git 저장소인 경우 `git init`은 생략할 수 있습니다. 원격 주소에는 자신의 저장소 주소를 넣으세요.

```sh
git init -b main
git add .
git commit -m "Initial version of Pogeun Island"
git remote add origin https://github.com/YOUR_NAME/pogeun-island.git
git push -u origin main
```

이후 위의 Pages 설정 단계를 진행합니다. GitHub 인증은 본인 계정으로 완료하세요.

## 확인 및 배포 파일 만들기

```sh
npm test
npm run build
npm run preview
```

`dist/`에는 배포용 HTML·JavaScript·CSS·아이콘이 만들어집니다. `npm run preview`에 표시된 주소에서 완성된 빌드를 확인할 수 있습니다. Three.js가 포함되므로 번들 크기 알림이 나올 수 있습니다.

## 저장과 실행 환경

- 진행 상황은 이 브라우저의 `localStorage`에 저장됩니다. 약 5초마다, 수집·대화·장식 시점, 화면을 떠날 때 저장합니다.
- 다른 기기·브라우저·사이트 주소와 공유되지 않습니다. 브라우저 데이터를 삭제하면 진행도 사라집니다. 시크릿 모드에서도 기록이 유지되지 않을 수 있습니다.
- 저장 접근이 차단된 환경에서도 플레이할 수 있지만 진행 기록은 남지 않습니다.
- WebGL 2를 지원하는 최신 Chrome, Edge, Firefox, Safari가 필요합니다. 실제 테스트한 환경은 `docs/verification.md`에 기록합니다.
- Google Fonts의 Gowun Dodum과 Noto Sans KR를 사용합니다. 네트워크가 차단되어도 기기의 기본 글꼴로 표시됩니다.
- 저사양 휴대폰에서 느리면 다른 앱을 닫거나 PC 브라우저에서 실행해 주세요.

## 구성

```text
.github/workflows/deploy.yml  GitHub Pages 자동 배포
public/favicon.svg           직접 만든 섬 아이콘
src/game.ts                  이동·충돌·수집·저장 규칙
src/game.test.ts             게임 규칙 및 저장 테스트
src/world.ts                 3D 장면·모델·애니메이션
src/main.ts                  화면·키보드·터치·대화 연결
src/style.css                반응형 한국어 인터페이스
index.html                   시작 문서
vite.config.ts               하위 경로 배포 설정
```

## 소재와 라이선스

원작의 캐릭터·이름·이미지·음악·모델을 사용하지 않았습니다. 섬·건물·주민·나무와 장식은 코드로 조합한 자체 3D 도형이며, 별도 모델 다운로드가 필요하지 않습니다. 주민 대화창의 동물 이모지는 각 기기의 기본 이모지로 표시됩니다. 닌텐도와 관련된 공식 제품이 아닙니다.

프로젝트 자체 소스는 [MIT License](LICENSE)로 공개할 수 있도록 준비했습니다. Three.js는 MIT 라이선스이고, Google Fonts의 글꼴은 SIL Open Font License를 따릅니다. 의존성 및 글꼴의 원래 라이선스는 각각 유지됩니다.

- [Three.js 공식 문서](https://threejs.org/manual/#en/installation)
- [Vite의 GitHub Pages 배포 안내](https://vite.dev/guide/static-deploy#github-pages)
- [GitHub Pages 공식 문서](https://docs.github.com/en/pages)
