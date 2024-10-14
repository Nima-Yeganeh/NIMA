python test.py
ffmpeg -i video.mp4 -c:v libx264 -preset slow -crf 18 -pix_fmt yuv420p -movflags +faststart -c:a aac -b:a 192k -ar 44100 -ac 2 -r 30 output_h264.mp4
