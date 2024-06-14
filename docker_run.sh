#!/bin/bash

current_dir=$(pwd)

# 根据当前操作系统类型确定路径分隔符
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    separator="/"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    separator="/"
elif [[ "$OSTYPE" == "cygwin" ]]; then
    separator="/"
elif [[ "$OSTYPE" == "msys" ]]; then
    separator="\\"
elif [[ "$OSTYPE" == "win32" ]]; then
    separator="\\"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    separator="/"
else
    separator="/"
fi

# 如果是 Windows，则转换路径格式
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    current_dir=$(cygpath -m "$current_dir")
fi

echo "current_dir: $current_dir"

## run container
### 对于balsa，需要使用--shm-size=来指定足够大的共享内存，不然执行run.py会报full_disk的错误
docker run --privileged --cap-add=SYS_PTRACE \
-it  \
-u balsa \
--name balsa \
--shm-size=24g \
-m 24g \
-v "$current_dir:/balsa" \
2638779206/balsa:latest \
bash