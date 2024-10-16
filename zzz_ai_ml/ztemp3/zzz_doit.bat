python make_wav_audio_from_text.py

:: makeitfastwavfile.bat
@echo off
setlocal EnableDelayedExpansion

:: Loop through numbers 1 to 40
for /L %%i in (1,1,50) do (
    :: Set the input and output file paths
    set "input_file=C:\Users\Nimay\Downloads\%%i_example_male.wav"
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
        ffmpeg -i "!input_file!" -filter:a "atempo=1.3" "!output_file!"
        echo Conversion complete: !output_file!
        del !input_file!
    )
)


:: zmp4make.bat
@echo off
setlocal EnableDelayedExpansion
:: Loop through numbers 1 to 40
for /L %%i in (1,1,50) do (
    for %%f in (C:\Users\Nimay\Downloads\%%i_*.png) do (
        if exist "%%f" (
            set "output_file=C:\Users\Nimay\Downloads\%%i_tts_rvc_output.wav"
            if exist "!output_file!" (
                echo Output file: !output_file!
                set "datetime=!date:~-4!!date:~4,2!!date:~7,2!_!time:~0,2!!time:~3,2!!time:~6,2!!time:~9,2!"
                echo !datetime!                              
                set "mp4output_file=C:\Users\Nimay\Downloads\zzzxyy_!datetime!.mp4"
                ffprobe.exe -i "!output_file!" -show_entries format=duration -v quiet -of csv="p=0" > test2.txt
                set /p duration=<"test2.txt"
                echo Audio duration: !duration!
                ffmpeg -loop 1 -i "%%f" -i "!output_file!" -tune stillimage -vf "scale=2560:1440, fps=1" -c:v libx264 -preset slow -crf 18 -c:a aac -b:a 320k -ar 44100 -ac 2 -shortest -t "!duration!" "!mp4output_file!"
                echo Output file created: !mp4output_file!
                del !output_file!
            )           
        )
    )
)


:: mergemp4.bat
python makemp4filelisttomerge.py
ffmpeg -f concat -safe 0 -i filelist.txt -vf "scale=2560:1440, fps=1" -c:v libx264 -preset slow -crf 18 -c:a aac -b:a 320k -ar 44100 -ac 2 -shortest "C:\Users\Nimay\Downloads\output.mp4"
python removemp4tempfiles.py


:: mp4_to_wav_mp3_output.bat
@echo off
setlocal

:: Set the input and output file paths
set "input_file=C:\Users\Nimay\Downloads\output.mp4"
set "input_2kfile=C:\Users\Nimay\Downloads\output2k.mp4"
set "wav_output_file=C:\Users\Nimay\Downloads\output.wav"
set "mp3_output_file=C:\Users\Nimay\Downloads\output.mp3"
ffmpeg -i "%input_file%" -vn -codec:a libmp3lame -b:a 320k -ar 44100 -ac 2 "%mp3_output_file%"
:: echo Conversion complete: %wav_output_file%
echo Conversion complete: %mp3_output_file%


:: delpngfilesindlfolder.bat
del C:\Users\Nimay\Downloads\*.png


:: mp3_to_wav_RVC
.\env\python.exe core.py infer --f0method harvest --pth_path .\logs\experiment_nimax3\experiment_nimax3.pth --index_path .\logs\experiment_nimax3\added_IVF5015_Flat_nprobe_1_experiment_nimax3_v2.index --input_path C:\Users\Nimay\Downloads\output.mp3 --output_path C:\Users\Nimay\Downloads\output_output.wav


:: wav_mp3_merge_mp4_give_new_mp4out_final.bat
@echo off
setlocal

:: Set the input file paths and output file path
set "video_file=C:\Users\Nimay\Downloads\output.mp4"
set "orgaudio_file=C:\Users\Nimay\Downloads\output.mp3"
set "audio_file=C:\Users\Nimay\Downloads\output_output.wav"
set "output_tempfile=C:\Users\Nimay\Downloads\tempoutput_with_new_audio.mp4"
set "output_file=C:\Users\Nimay\Downloads\output_with_new_audio.mp4"
set "output_2kfile=C:\Users\Nimay\Downloads\output2k.mp4"
set "video_2kfile=C:\Users\Nimay\Downloads\output2k.mp4"

:: Increase audio gain by 10 dB (change to 15dB if needed)
set "audio_gain=0dB"

ffmpeg -i "%video_file%" -an -c:v copy "%output_tempfile%"
ffmpeg -i "%output_tempfile%" -i "%audio_file%" -c:v copy -c:a aac -b:a 192k -ac 2 -shortest "%output_file%"

echo Audio replacement, gain adjustment, and quality setting complete: %output_file%

del "%video_file%"
del "%output_tempfile%"
del "%orgaudio_file%"
del "%audio_file%"

