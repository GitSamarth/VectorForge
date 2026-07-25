@echo off
echo Building VectorForge...
g++ -std=c++17 -O2 main.cpp -o db.exe -lws2_32

if %errorlevel% neq 0 (
    echo Build failed.
    pause
    exit /b
)

echo Starting VectorForge...
start http://localhost:8080
db.exe
