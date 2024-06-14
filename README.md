构建docker容器
1. `bash docker_build.sh`
2. `bash docker_run.sh`

构建balsa
1. `bash 0install_conda.sh`
   1. `bash`
2. `bash 1install_balsa.sh`
   1. `conda activate balsa`
   2. `bash 1install_balsa.sh`
3. `bash 2install_postgre.sh`
4. `bash 3install_pg_hint_plan.sh`
5. `bash 4load_JOB_tables.sh`
   1. `pip3 install -i https://mirrors.aliyun.com/pypi/simple/ protobuf==3.20.0`