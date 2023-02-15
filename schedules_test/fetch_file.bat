@echo off
cls

net use F: \\192.168.1.4\Patches /user:hari GoodLovers@12299 /p:no

set /p HOTFIXID="ID: "

IF EXIST "F:\*%HOTFIXID%*.msu" (
    copy "F:\*%HOTFIXID%*.msu" C:\Patches
) ELSE (
    echo 'File missing!'
)

pause
:exit
