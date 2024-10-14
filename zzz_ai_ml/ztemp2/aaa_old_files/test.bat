@echo off
setlocal EnableDelayedExpansion

:: Loop through numbers 1 to 40
for /L %%i in (1,1,40) do (
    :: Check if any PNG files exist starting with the current number followed by an underscore
    for %%f in (C:\Users\Nimay\Downloads\%%i_*.png) do (
        if exist "%%f" (
            set "output_file=C:\Users\Nimay\Downloads\%%i_tts_rvc_output.wav"
            if exist "!output_file!" (
                echo File found: %%f    
                echo Output file: !output_file!
            )            
        )
    )
)
