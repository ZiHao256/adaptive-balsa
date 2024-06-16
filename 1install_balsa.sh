cd balsa
# Recommended: run inside a Conda environment.
# All commands that follow are run under this conda env.
# conda create -n balsa python=3.7 -y
# conda activate balsa
pip3 install -r requirements.txt
pip3 install -e .
pip3 install -e pg_executor