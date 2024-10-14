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
    )
)
