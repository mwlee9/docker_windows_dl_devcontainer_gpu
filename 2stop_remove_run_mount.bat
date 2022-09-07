docker stop dl

docker rm dl

docker run -dp 8889:8888 -p 4040:4040 ^
-it --mount type=bind,source="%cd%"\VOLUMES,target=/home/volumes ^
--name dl ^
lee/dl ^
jupyter lab --ip=0.0.0.0 --port=8888 --NotebookApp.token='' --allow-root
pause
