@echo off
setlocal EnableDelayedExpansion

:: Loop through numbers 1 to 50
for /L %%i in (1,1,50) do (
    :: Set the input and output file paths
    set "input_file=C:\Users\Nimay\Downloads\%%i_example_male.wav"
    set "output_file=C:\Users\Nimay\Downloads\%%i_rvc_output.wav"

    :: Remove the output file if it exists
    if exist "!output_file!" (
        del !output_file!
        echo Deleted existing output file: !output_file!
    )

    :: Check if the input file exists
    if exist "!input_file!" (
        echo Processing: !input_file!
        .\env\python.exe core.py infer --f0method harvest --pth_path .\logs\experiment_nimax3\experiment_nimax3.pth --index_path .\logs\experiment_nimax3\added_IVF5015_Flat_nprobe_1_experiment_nimax3_v2.index --input_path "!input_file!" --output_path "!output_file!"
        echo Conversion complete: !output_file!
        del !input_file!
    )
)

