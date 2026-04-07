@echo off
echo Checking for existing Node.js processes on port 4000...
for /f "tokens=5" %%a in ('netstat -ano ^| findstr :4000 ^| findstr LISTENING') do (
    echo Killing process %%a
    taskkill /PID %%a /F >nul 2>&1
)

echo Starting server...
cd "d:\StockSnap Deploy\BE"
npm start