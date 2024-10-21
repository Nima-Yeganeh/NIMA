
del .\*.mp4

python .\pdf_to_txt_v2.py
python .\pdf_to_png.py
python .\png_to_new_png_scale_step1.py
python .\png_to_new_png_scale_step2.py
python .\text_to_chatgpt_new_text.py
python .\output_text_show_tts_wav.py

:: zzzmp3towavaplio.bat
@echo off
setlocal EnableDelayedExpansion
:: Loop through numbers 1 to 50
for /L %%i in (1,1,50) do (
    :: Set the input and output file paths
    set "input_file=.\%%i_example_male.wav"
    set "output_file=.\%%i_rvc_output.wav"
    :: Remove the output file if it exists
    if exist "!output_file!" (
        del !output_file!
        echo Deleted existing output file: !output_file!
    )
    :: Check if the input file exists
    if exist "!input_file!" (
        echo Processing: !input_file!
        .\env\python.exe core.py infer --f0_method rmvpe --pth_path .\logs\experiment_nimax3\experiment_nimax3.pth --index_path .\logs\experiment_nimax3\added_IVF5015_Flat_nprobe_1_experiment_nimax3_v2.index --input_path "!input_file!" --output_path "!output_file!"
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
    set "input_file=.\%%i_rvc_output.wav"
    set "output_file=.\%%i_tts_rvc_output.wav"
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
    for %%f in (.\%%i_image_newconverted_scale.png) do (
        if exist "%%f" (
            set "output_file=.\%%i_tts_rvc_output.wav"
            if exist "!output_file!" (
                echo Output file: !output_file!
                set "datetime=!date:~-4!!date:~4,2!!date:~7,2!_!time:~0,2!!time:~3,2!!time:~6,2!!time:~9,2!"
                echo !datetime!                              
                set "mp4output_file=.\zzzxyy_!datetime!.mp4"
                C:\ProgramData\chocolatey\bin\ffprobe.exe -i "!output_file!" -show_entries format=duration -v quiet -of csv="p=0" > temp
                set /p duration=<"temp"
                echo Audio duration: !duration!
                C:\ProgramData\chocolatey\bin\ffmpeg -loop 1 -i "%%f" -i "!output_file!" -tune stillimage -vf "scale=2560:1440, fps=30" -c:v libx264 -preset slow -crf 18 -c:a aac -b:a 320k -ar 44100 -ac 2 -shortest -t "!duration!" "!mp4output_file!"
                echo Output file created: !mp4output_file!
                del !output_file!
            )           
        )
    )
)

:: mergemp4.bat
python makemp4filelisttomerge.py
C:\ProgramData\chocolatey\bin\ffmpeg -f concat -safe 0 -i filelist.txt -vf "scale=2560:1440, fps=1" -c:v libx264 -preset slow -crf 18 -c:a aac -b:a 320k -ar 44100 -ac 2 -shortest ".\output.mp4"
python removemp4tempfiles.py

:: delpngfilesindlfolder.bat
del .\*.png
del .\*.txt

:: Final_MP4
C:\ProgramData\chocolatey\bin\ffmpeg -i ".\output.mp4" -vf "scale=2560:1440, fps=5" -c:v libx264 -preset slow -crf 35 -c:a aac -b:a 128k -ar 44100 -ac 2 -shortest ".\output_final.mp4"
del ".\output.mp4"

del .\temp
python .\rename.py

