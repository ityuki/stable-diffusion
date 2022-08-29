import torch
from torch import autocast
from diffusers import StableDiffusionPipeline
import sys

model_id = "CompVis/stable-diffusion-v1-4"
device = "cpu"


pipe = StableDiffusionPipeline.from_pretrained(model_id, use_auth_token=True)
pipe = pipe.to(device)

prompt = sys.argv[0]

with autocast("cpu"):
    image = pipe(prompt, guidance_scale=7.5)["sample"][0]  
    
image.save("test.png")
