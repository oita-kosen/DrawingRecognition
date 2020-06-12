# DrawingRecognition

# Commands

## Docker

### Build docker image

```
docker build -t drawing_recognition .
```

### Launch the container

bash or zsh:

```
docker run -d -p6006-6007:6006-6007 -p5000-5001:5000-5001 -p8888-8889:8888-8889 --init --rm -it --gpus=all --ipc=host --user=$(id -u):$(id -g) --name=$(basename $PWD) -e TZ=Asia/Tokyo --volume=$PWD:/workspace drawing_recognition:latest
```

fish:

```
docker run -d -p6006-6007:6006-6007 -p5000-5001:5000-5001 -p8888-8889:8888-8889 --init --rm -it --gpus=all --ipc=host --user=(id -u):(id -g) --name=(basename $PWD) -e TZ=Asia/Tokyo --volume=$PWD:/workspace drawing_recognition:latest
```

If you don't have any GPUs, remove --gpus option.

### Enter the running container

```
docker attach DrawingRecognition
```

or

```
docker exec -it DrawingRecognition
```

## Server

### Launch Tensorboard server

```
tensorboard --logdir=. --host=0.0.0.0 --port=6006
```

### Launch MLflow server

```
mlflow server --default-artifact-root=gs://YOUR_GCS_BUCKET/path/to/mlruns --host=0.0.0.0 --port=5000
```
