@echo off
:: Set the input and output file paths
set "input_file=C:\Users\Nimay\Downloads\example_male.wav"
set "output_file=C:\Users\Nimay\Downloads\tts_rvc_output.wav"

:: Use FFmpeg to speed up the audio by 1.2x
ffmpeg -i "%input_file%" -filter:a "atempo=1.3" "%output_file%"

echo Conversion complete: %output_file%
