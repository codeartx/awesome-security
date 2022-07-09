#####
# https://github.com/google/tsunami-security-scanner
#####

docker run --name unauthenticated-jupyter-notebook -p 8888:8888 -d jupyter/base-notebook start-notebook.sh --NotebookApp.token=''

docker run  --network="host" -v ${PWD}/volumes/logs:/usr/tsunami/logs huafeihuao0/tsunami:0.0.10
