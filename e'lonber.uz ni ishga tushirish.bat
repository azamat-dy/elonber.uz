@echo off
chcp 65001 >nul
title e'lonber.uz Platformasi
cls
cd /d "C:\Users\user\Desktop\e'lonber.uz"
echo ======================================================================
echo                e'lonber.uz - Startap Loyihasi
echo ======================================================================
echo.
echo Server ishga tushirilmoqda...
echo.
echo Kompyuterda: http://localhost:3000
echo Telefonda (Wi-Fi): http://192.168.100.156:3000
echo.
start "" "http://localhost:3000"
where node >nul 2>&1
if %ERRORLEVEL% equ 0 (
    node server.js
) else (
    "C:\Program Files\nodejs\node.exe" server.js
)
pause
