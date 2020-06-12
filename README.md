# DrawingRecognition

## Commands

### Docker Commands

Build docker image.
```
docker build -t drawing_recognition .
```
Launch the container.
```
docker run -d -p6006:6006 -p6007:6007 -p5000-5001:5000-5001 -p8888-8889:8888-8889 --init --rm -it --gpus=all --ipc=host --user=(id -u):(id -g) --name=(basename $PWD) -e TZ=Asia/Tokyo --volume=$PWD:/workspace drawing_recognition:latest
```
Enter the running container.
```
docker exec -itd drawing_recognition
```

### Server

Launch Tensorboard server.
```
tensorboard --logdir=. --host=0.0.0.0 --port=6006
```
Launch MLflow server.
```
mlflow server --default-artifact-root=gs://YOUR_GCS_BUCKET/path/to/mlruns --host=0.0.0.0 --port=5000
```
