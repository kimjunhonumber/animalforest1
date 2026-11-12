@echo off
chcp 65001 >nul
cd /d "%~dp0"
where node >nul 2>&1
if errorlevel 1 (
  echo Node.js 22.12 이상을 먼저 설치해 주세요: https://nodejs.org/
  pause
  exit /b 1
)
if not exist "node_modules\vite\bin\vite.js" (
  echo 처음 실행에 필요한 파일을 준비합니다.
  call npm ci
  if errorlevel 1 (
    echo 준비에 실패했습니다. 인터넷 연결과 Node.js 설치를 확인해 주세요.
    pause
    exit /b 1
  )
)
echo 포근섬을 엽니다. 종료하려면 이 창에서 Ctrl+C를 누르세요.
call npm run dev -- --port 5173 --strictPort --open
if errorlevel 1 (
  echo 실행에 실패했습니다. 이미 열려 있는 포근섬 창이 있는지 확인해 주세요.
  pause
)
