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
