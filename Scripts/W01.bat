@echo off
setlocal enabledelayedexpansion

REM Path to the scene file
set "SCENE_PATH=<Path\Scene.pbrt>"

REM Take user input for log file name
set /p "LOG_FILE=Enter log file name (e.g., pbrt_logs.txt): "

REM Number of times to execute the pbrt.exe command
set "NUM_EXECUTIONS=5"

REM Loop to execute the pbrt.exe command and capture output in the log file
set "i=1"
:loop
if !i! LEQ %NUM_EXECUTIONS% (
    echo Running pbrt.exe for scene !i! >> !LOG_FILE!
    date /t >> !LOG_FILE!
    pbrt.exe "!SCENE_PATH!" >> !LOG_FILE!
    date /t >> !LOG_FILE!
    set /a "i+=1"
    goto loop
)

endlocal
