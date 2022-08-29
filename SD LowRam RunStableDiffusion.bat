call c:\App\anaconda3\Scripts\activate.bat ldm
set /P id=Enter Prompt And Options : 
REM zluda_with -- python "optimizedSD\optimized_txt2img.py" %id%
python "optimizedSD\optimized_txt2img.py" %id%
cmd /k