@echo off
setlocal

ffprobe.exe -i "C:\Users\Nimay\Downloads\1_tts_rvc_output.wav" -show_entries format=duration -v quiet -of csv="p=0" > test2.txt

rem Specify the input file
set "input_file=test2.txt"

rem Read the first line of the file and store it in the variable
set /p first_line=<"%input_file%"

rem Echo the first line
echo First line: %first_line%

endlocal
