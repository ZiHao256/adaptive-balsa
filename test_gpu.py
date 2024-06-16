import time
import torch

device = torch.device("cuda:0")



# 测试gpu计算耗时
A = torch.ones(10, 10).to(device)
B = torch.ones(10, 10).to(device)
startTime2 = time.time()
for i in range(1):
    C = torch.matmul(A, B)
endTime2 = time.time()
print('gpu计算总时长:', round((endTime2 - startTime2) * 1000, 2), 'ms')

