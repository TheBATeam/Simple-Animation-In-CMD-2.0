@echo off
cls 
mode 120,50
setlocal enabledelayedexpansion

Set "Path=%Path%;%CD%;%cd%\Files;"

set x_1=0
set y_1=0
set x_2=55
set y_2=0

SET /a space_gap=%x_2%-%x_1%

rem delay is in mili scnd
set delay=20

set sign_x_1=+
set sign_y_1=+
set sign_x_2=-
set sign_y_2=+

set item_1=namish
set item_1_len=6
set item_2=Karan
set item_2_len=5

set Columns=120
set lines=50
::call :get_size Lines Columns

set /a upper_x=%columns%-%item_1_len%
set /a upper_y=%lines%-3
set lowr_x=1
set lowr_y=1
fn.dll cursor 0

:loop
cls
if %x_1% gtr %upper_x% (set sign_x_1=-)
if %y_1% gtr %upper_y% (set sign_y_1=-)

if %x_1% lss %lowr_x% (set sign_x_1=+)
if %y_1% lss %lowr_y% (set sign_y_1=+)

if %x_2% gtr %upper_x% (set sign_x_2=-)
if %y_2% gtr %upper_y% (set sign_y_2=-)

if %x_2% lss %lowr_x% (set sign_x_2=+)
if %y_2% lss %lowr_y% (set sign_y_2=+)

set item_1_limit_1=%x_1%
set /a item_1_limit_2=%x_1%+%item_1_len%
set item_2_limit_1=%x_2%
set /a item_2_limit_2=%x_2%+%item_2_len%

if /i "%x_1%" == "%x_2%" (
	for /l %%a in (1,1,2) do (
		if /i "!sign_x_%%a!" == "-" (set sign_x_%%a=+) else (set sign_x_%%a=-)
		if /i "!sign_y_%%a!" == "-" (set sign_y_%%a=+) else (set sign_y_%%a=-)
	)
)

fn.dll sprite !y_1! !x_1! 0a "!item_1!"
fn.dll sprite !y_2! !x_2! 0c "!item_2!"


set /a x_1%sign_x_1%=1
set /a y_1%sign_y_1%=1
set /a x_2%sign_x_2%=1
set /a y_2%sign_y_2%=1
fn.dll sleep %delay%
goto loop

:get_size
mode | find "Columns">"%tmp%\c.tmp"
mode | find "Lines">"%tmp%\l.tmp"
set now=%cd%
cd /d "%tmp%" >nul
for /f "tokens=2 delims=:" %%a in (l.tmp) do (set /a %~1=%%a)
for /f "tokens=2 delims=:" %%a in (c.tmp) do (set /a %~2=%%a)
cd /d "%now%"
goto :eof