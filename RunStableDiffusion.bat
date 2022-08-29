call c:\App\anaconda3\Scripts\activate.bat ldm
set /P id=Enter Prompt And Options : 
REM zluda_with -- python "optimizedSD\optimized_txt2img.py" %id%
REM python "optimizedSD\optimized_txt2img.py" %id%
python "scripts\txt2img.py" %id% --ckpt="model 1.3.ckpt"" --ddim_steps=50 --n_samples=1 --n_iter=1
cmd /k