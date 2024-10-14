python makemp4filelisttomerge.py

:: ffmpeg -f concat -safe 0 -i filelist.txt -c copy "C:\Users\Nimay\Downloads\output.mp4"
:: ffmpeg -i "C:\Users\Nimay\Downloads\output.mp4" -vf "scale=2560:1440" -r 30 -c:v libx264 -crf 18 -c:a aac -b:a 320k -ac 2 "C:\Users\Nimay\Downloads\output2k.mp4"
ffmpeg -f concat -safe 0 -i filelist.txt -vf "scale=2560:1440, fps=1" -c:v libx264 -preset slow -crf 18 -c:a aac -b:a 320k -ar 44100 -ac 2 -shortest "C:\Users\Nimay\Downloads\output.mp4"

python removemp4tempfiles.py
