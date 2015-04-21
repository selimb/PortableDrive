SET CAFFEINE=%APPS%\Caffeine\caffeine.exe
SET /P ANSWER=Do you want to run Caffeine (Y/N)?

if /i {%ANSWER%}=={n} (goto :no)

start %CAFFEINE%

:no
