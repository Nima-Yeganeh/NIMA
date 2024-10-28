@echo off
set source_folder=C:\Users\Nimay\Downloads
set destination_folder=C:\Users\Nimay\Downloads\zApplioV326new_for_Screen_Capture_Ud
rem Check if the destination folder exists, if not, create it
if not exist "%destination_folder%" (
    mkdir "%destination_folder%"
)
rem Loop through all mp4 files in the source folder
for %%f in ("%source_folder%\*_SNAG.mp4") do (
    rem Extract the base name (without path and extension)
    set "filename=%%~nf"
    rem Enable delayed expansion to use variables inside the loop
    setlocal enabledelayedexpansion
    rem Extract the numeric part before "_SNAG"
    set "number=!filename:_SNAG=!"
    rem Check if the number is in the range 0001 to 9999
    if !number! geq 0001 if !number! leq 9999 (
        rem Move the file to the destination folder
        move "%%f" "%destination_folder%"
        echo Moved %%f to %destination_folder%
        ffmpeg -i "%destination_folder%\\!filename!.mp4" -filter_complex "[0:v]setpts=PTS/1.25,scale=-1:-1,pad=1920:1080:(1920-iw)/2:(1080-ih)/2:black[v];[0:a]atempo=1.25[a]" -map "[v]" -map "[a]" -c:v mpeg4 -q:v 2 -c:a aac -b:a 320k "%destination_folder%\\!filename!_1.25x_1920x1080.mp4"
        ffmpeg -i "%destination_folder%\\!filename!_1.25x_1920x1080.mp4" -ac 2 -ar 48000 -q:a 0 "%destination_folder%\\!filename!_output_audio.wav"
        ffmpeg -i "%destination_folder%\\!filename!_1.25x_1920x1080.mp4" -an -c:v mpeg4 -q:v 2 "%destination_folder%\\!filename!_no_audio.mp4"
        .\env\python.exe core.py infer --f0_method rmvpe --pth_path .\logs\experiment_nimax3\experiment_nimax3.pth --index_path .\logs\experiment_nimax3\added_IVF5015_Flat_nprobe_1_experiment_nimax3_v2.index --input_path "%destination_folder%\\!filename!_output_audio.wav" --output_path "%destination_folder%\\!filename!_output_audio.wav_adri.wav"
        ffmpeg -i "%destination_folder%\\!filename!_no_audio.mp4" -i "%destination_folder%\\!filename!_output_audio.wav_adri.wav" -c:v copy -c:a aac -b:a 320k "%destination_folder%\\!filename!_final_output.mp4"
        del "%destination_folder%\\!filename!_1.25x_1920x1080.mp4"
        del "%destination_folder%\\!filename!_output_audio.wav"
        del "%destination_folder%\\!filename!_no_audio.mp4"
        del "%destination_folder%\\!filename!_output_audio.wav_adri.wav"
    )
    endlocal
)
echo Done!
