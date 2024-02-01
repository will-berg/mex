import torch

# Test if pytorch is working
print(torch.__version__)

# Test if GPU is working
print(torch.cuda.is_available())
