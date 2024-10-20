
python make_wav_audio_from_text.py

:: zzzmp3towavaplio.bat
@echo off
setlocal EnableDelayedExpansion

:: Loop through numbers 1 to 50
for /L %%i in (1,1,50) do (
    :: Set the input and output file paths
    set "input_file=C:\Users\Nimay\Downloads\%%i_example_male.wav"
    set "output_file=C:\Users\Nimay\Downloads\%%i_rvc_output.wav"

    :: Remove the output file if it exists
    if exist "!output_file!" (
        del !output_file!
        echo Deleted existing output file: !output_file!
    )

    :: Check if the input file exists
    if exist "!input_file!" (
        echo Processing: !input_file!
        .\env\python.exe core.py infer --f0method harvest --pth_path .\logs\experiment_nimax3\experiment_nimax3.pth --index_path .\logs\experiment_nimax3\added_IVF5015_Flat_nprobe_1_experiment_nimax3_v2.index --input_path "!input_file!" --output_path "!output_file!"
        echo Conversion complete: !output_file!
        del !input_file!
    )
)

:: makeitfastwavfile.bat
@echo off
setlocal EnableDelayedExpansion

:: Loop through numbers 1 to 50
for /L %%i in (1,1,50) do (
    :: Set the input and output file paths
    set "input_file=C:\Users\Nimay\Downloads\%%i_rvc_output.wav"
    set "output_file=C:\Users\Nimay\Downloads\%%i_tts_rvc_output.wav"

    :: Remove the output file if it exists
    if exist "!output_file!" (
        del !output_file!
        echo Deleted existing output file: !output_file!
    )

    :: Check if the input file exists
    if exist "!input_file!" (
        echo Processing: !input_file!
        :: Use FFmpeg to speed up the audio by 1.3x
        C:\ProgramData\chocolatey\bin\ffmpeg -i "!input_file!" -filter:a "atempo=1.3" "!output_file!"
        echo Conversion complete: !output_file!
        del !input_file!
    )
)

:: zmp4make.bat
@echo off
setlocal EnableDelayedExpansion
:: Loop through numbers 1 to 50
for /L %%i in (1,1,50) do (
    for %%f in (C:\Users\Nimay\Downloads\%%i_*.png) do (
        if exist "%%f" (
            set "output_file=C:\Users\Nimay\Downloads\%%i_tts_rvc_output.wav"
            if exist "!output_file!" (
                echo Output file: !output_file!
                set "datetime=!date:~-4!!date:~4,2!!date:~7,2!_!time:~0,2!!time:~3,2!!time:~6,2!!time:~9,2!"
                echo !datetime!                              
                set "mp4output_file=C:\Users\Nimay\Downloads\zzzxyy_!datetime!.mp4"
                C:\ProgramData\chocolatey\bin\ffprobe.exe -i "!output_file!" -show_entries format=duration -v quiet -of csv="p=0" > test2.txt
                set /p duration=<"test2.txt"
                echo Audio duration: !duration!
                C:\ProgramData\chocolatey\bin\ffmpeg -loop 1 -i "%%f" -i "!output_file!" -tune stillimage -vf "scale=2560:1440, fps=1" -c:v libx264 -preset slow -crf 18 -c:a aac -b:a 320k -ar 44100 -ac 2 -shortest -t "!duration!" "!mp4output_file!"
                echo Output file created: !mp4output_file!
                del !output_file!
            )           
        )
    )
)

:: delpngfilesindlfolder.bat
del C:\Users\Nimay\Downloads\*.png

:: mergemp4.bat
python makemp4filelisttomerge.py
C:\ProgramData\chocolatey\bin\ffmpeg -f concat -safe 0 -i filelist.txt -vf "scale=2560:1440, fps=1" -c:v libx264 -preset slow -crf 18 -c:a aac -b:a 320k -ar 44100 -ac 2 -shortest "C:\Users\Nimay\Downloads\output.mp4"
python removemp4tempfiles.py

