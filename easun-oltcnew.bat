@echo off

:: Open the first command prompt window and run the first script
start cmd /c "cd .\easun-mr\ && npm run dev"

:: Open the second command prompt window and run the second script
start cmd /c java -jar OLTCTest.jar
timeout /t 3
start chrome http://localhost:3000/auth/Login