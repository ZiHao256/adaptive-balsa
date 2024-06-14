cd balsa
# Recommended: run inside a Conda environment.
# All commands that follow are run under this conda env.
conda create -n balsa python=3.7 -y
conda activate balsa
pip3 install -i https://mirrors.aliyun.com/pypi/simple/ -r requirements.txt
pip3 install -i https://mirrors.aliyun.com/pypi/simple/ -e .
pip3 install -i https://mirrors.aliyun.com/pypi/simple/ -e pg_executor