@echo off
setlocal

:: Set the input and output file paths
set "input_file=C:\Users\Nimay\Downloads\output.mp4"
set "input_2kfile=C:\Users\Nimay\Downloads\output2k.mp4"
set "wav_output_file=C:\Users\Nimay\Downloads\output.wav"
set "mp3_output_file=C:\Users\Nimay\Downloads\output.mp3"
:: Use FFmpeg to extract audio and convert it to WAV format
:: ffmpeg -i "%input_2kfile%" "%wav_output_file%"
:: ffmpeg -i "%input_file%" "%wav_output_file%"
:: ffmpeg -i "%input_file%" -vn -acodec pcm_s16le -ar 44100 -ac 2 "%wav_output_file%"

:: echo Conversion complete: %wav_output_file%

:: Set the input and output file paths
:: set "input_file=C:\Users\Nimay\Downloads\output.mp4"
:: set "mp3_output_file=C:\Users\Nimay\Downloads\output.mp3"

:: Use FFmpeg to extract audio and convert it to MP3 format
:: ffmpeg -i "%input_file%" -q:a 0 "%mp3_output_file%"
:: ffmpeg -i "%input_file%" -b:a 320k "%mp3_output_file%"
ffmpeg -i "%input_file%" -vn -codec:a libmp3lame -b:a 320k -ar 44100 -ac 2 "%mp3_output_file%"

:: echo Conversion complete: %wav_output_file%
echo Conversion complete: %mp3_output_file%

