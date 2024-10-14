:: wav_mp3_merge_mp4_give_new_mp4out_final.bat
@echo off
setlocal

:: Set the input file paths and output file path
:: set "video_file=C:\Users\Nimay\Downloads\output.mp4"
:: set "audio_file=C:\Users\Nimay\Downloads\output.wav"
:: set "output_file=C:\Users\Nimay\Downloads\output_with_new_audio.mp4"
:: Use FFmpeg to replace the audio in the MP4 file with the WAV file
:: ffmpeg -i "%video_file%" -i "%audio_file%" -c:v copy -c:a aac -strict experimental -map 0:v:0 -map 1:a:0 "%output_file%"
:: echo Audio replacement complete: %output_file%

:: Set the input file paths and output file path
:: set "video_file=C:\Users\Nimay\Downloads\output.mp4"
:: set "audio_file=C:\Users\Nimay\Downloads\output_output.mp3"
:: set "output_file=C:\Users\Nimay\Downloads\output_with_new_audio.mp4"
:: Use FFmpeg to replace the audio in the MP4 file with the MP3 file
:: ffmpeg -i "%video_file%" -i "%audio_file%" -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 "%output_file%"
:: echo Audio replacement complete: %output_file%

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

:: Use FFmpeg to replace the audio in the MP4 file with the WAV file, increase the audio gain, and set audio bitrate to 320k
:: ffmpeg -i "%video_file%" -i "%audio_file%" -c:v copy -c:a aac -b:a 320k -af "volume=%audio_gain%" -map 0:v:0 -map 1:a:0 "%output_file%"
:: ffmpeg -i "%video_file%" -i "%audio_file%" -c:v copy -c:a aac -b:a 320k -ac 2 -af "volume=%audio_gain%" -map 0:v:0 -map 1:a:0 "%output_file%"
:: ffmpeg -i "%video_file%" -i "%audio_file%" -r 1 -c:v libx264 -c:a aac -b:a 128k -ac 2 -af "volume=%audio_gain%" -map 0:v:0 -map 1:a:0 "%output_file%"
:: ffmpeg -i "%video_file%" -i "%audio_file%" -r 1 -c:v libx264 -crf 28 -c:a aac -b:a 128k -ac 2 -af "volume=%audio_gain%" -map 0:v:0 -map 1:a:0 "%output_file%"

:: Use FFmpeg to replace the audio in the MP4 file with the WAV file, increase the audio gain, set audio bitrate to 128k, reduce frame rate to 1 fps, and set video quality to 30%
:: ffmpeg -i "%video_file%" -i "%audio_file%" -r 1 -c:v libx264 -crf 35 -c:a aac -b:a 128k -ac 2 -af "volume=%audio_gain%" -map 0:v:0 -map 1:a:0 "%output_file%"

:: ffmpeg -i "%video_file%" -i "%audio_file%" -r 1 -vf "scale=1920:1080" -c:v libx264 -crf 35 -c:a aac -b:a 128k -ac 2 -af "volume=%audio_gain%" -map 0:v:0 -map 1:a:0 "%output_file%"

:: ffmpeg -i "%video_file%" -i "%audio_file%" -r 24 -vf "scale=2560:1440" -c:v libx264 -crf 35 -c:a aac -b:a 128k -ac 2 -af "volume=%audio_gain%" -map 0:v:0 -map 1:a:0 "%output_file%"

:: ffmpeg -i "%video_file%" -i "%audio_file%" -r 24 -vf "scale=2560:1440" -c:v libx264 -crf 30 -c:a aac -b:a 128k -ac 2 -af "volume=%audio_gain%" -map 0:v:0 -map 1:a:0 "%output_file%"

:: ffmpeg -i "%video_file%" -i "%audio_file%" -r 5 -c:v copy -crf 30 -c:a aac -b:a 128k -ac 2 -af "volume=%audio_gain%" -map 0:v:0 -map 1:a:0 "%output_file%"
:: ffmpeg -i "%video_file%" -i "%audio_file%" -r 5 -c:v libx264 -crf 40 -c:a aac -b:a 96k -ac 2 -af "volume=%audio_gain%" -map 0:v:0 -map 1:a:0 "%output_file%"
:: ffmpeg -i "%video_file%" -i "%audio_file%" -r 5 -c:v copy -crf 40 -c:a aac -b:a 96k -ac 2 -af "volume=%audio_gain%" -map 0:v:0 -map 1:a:0 "%output_file%"
:: ffmpeg -i "%video_file%" -i "%audio_file%" -r 5 -c:v copy -crf 30 -c:a aac -b:a 128k -ac 2 -af "volume=%audio_gain%" -map 0:v:0 -map 1:a:0 "%output_file%"
:: ffmpeg -i "%video_file%" -i "%audio_file%" -c:v copy -c:a aac -b:a 128k -ac 2 -af "volume=%audio_gain%" -map 0:v:0 -map 1:a:0 "%output_file%"
:: ffmpeg -i "%video_file%" -i "%audio_file%" -c:v copy -map 0:v:0 -map 1:a:0 "%output_file%"
:: ffmpeg -i "%video_file%" -i "%audio_file%" -c:v copy -map 0:v:0 -map 1:a:0 "%output_file%"
:: ffmpeg -i "%video_2kfile%" -i "%audio_file%" -c:v copy -map 0:v:0 -map 1:a:0 "%output_file%"

ffmpeg -i "%video_file%" -an -c:v copy "%output_tempfile%"
:: ffmpeg -i "%output_tempfile%" -i "%orgaudio_file%" -c:v copy -c:a aac -b:a 192k -ac 2 -af "volume=%audio_gain%" -shortest "%output_file%"
:: ffmpeg -i "%output_tempfile%" -i "%audio_file%" -c:v copy -c:a aac -b:a 192k -ac 2 -af "volume=%audio_gain%" -shortest "%output_file%"
ffmpeg -i "%output_tempfile%" -i "%audio_file%" -c:v copy -c:a aac -b:a 192k -ac 2 -shortest "%output_file%"

:: ffmpeg -i "%output_2kfile%" -i "%audio_file%" -c:v copy -c:a aac -b:a 192k -strict experimental -shortest "%output_file%"

:: ffmpeg -i "%video_file%" -i "%audio_file%" -r 5 -c:v libx264 -crf 30 -c:a aac -b:a 96k -ac 2 -af "volume=%audio_gain%" -map 0:v:0 -map 1:a:0 "%output_file%"
:: ffmpeg -i "%video_file%" -i "%audio_file%" -r 30 -vf "scale=2560:1440" -c:v libx264 -crf 35 -c:a aac -b:a 128k -ac 2 -af "volume=%audio_gain%" -map 0:v:0 -map 1:a:0 "%output_file%"

echo Audio replacement, gain adjustment, and quality setting complete: %output_file%

del "%video_file%"
del "%output_tempfile%"
del "%orgaudio_file%"
del "%audio_file%"
