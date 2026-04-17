@ECHO OFF
@SET PYTHONIOENCODING=utf-8
@SET PYTHONUTF8=1
@FOR /F "tokens=2 delims=:." %%A in ('chcp') do for %%B in (%%A) do set "_CONDA_OLD_CHCP=%%B"
@chcp 65001 > NUL
@CALL "C:\Users\shige\anaconda3\condabin\conda.bat" activate "c:\Users\shige\OneDrive\programming\Ecology_Analysis_training\.conda"
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@c:\Users\shige\OneDrive\programming\Ecology_Analysis_training\.conda\python.exe -Wi -m compileall -q -l -i C:\Users\shige\AppData\Local\Temp\tmpqkynob78 -j 0
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@chcp %_CONDA_OLD_CHCP%>NUL
