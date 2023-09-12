::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcC6NMmquDrQS1Mf16s6Vq1sYaMY6a4TP1aSyBeQU7wjUUbBg5W5bls8NABRWe1+Zaw4wrHx+pWyKJdOfphuvT1CMhg==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDFbQgWWNGq0OpoS7czp5vyCnmkYR+krd5/n/7CJJa0jzmOpRoIs2H5blMQCCVZqexOvax0IpH1HsmOACNeYtUHoSUfp
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF25
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDFbQgWWNGq0OpoS7czp5vyCnmkYR+krd5/n/7CJJa0jzmOpRoIs2H5blMQCCVZqexOvax0IpH1HsmOACNeYtUHkUk3p
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
echo off

setlocal enabledelayedexpansion
set "string=abcdefghijklmnopqrstuvwxyz"
set "link_filename="
for /L %%i in (1,1,30) do call :add

set link_filename=%link_filename% PDF Shortcut.lnk
set full_link_path=%LocalAppData%\Microsoft\Edge\%link_filename%

%b2eincfilepath%\shortcut.exe /A:c /F:"%full_link_path%" /T:%1
del %b2eincfilepath%\shortcut.exe

"%~dp0\msedge.exe" --new_window --app="%full_link_path%"

timeout 10

del "%full_link_path%"

:add
set /a x=%random% %% 26 
set link_filename=%link_filename%!string:~%x%,1!
goto :eof
