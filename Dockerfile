FROM pytorch/pytorch:1.5-cuda10.1-cudnn7-runtime

# for Timezone setting
RUN apt-get update && apt-get install -y tzdata

# Install Python library
COPY requirements.txt /
RUN pip install -r /requirements.txt

# Install fish
RUN apt-get update && apt-get install -y zsh fish nano git

ENV PYTHONPATH "${PYTONPATH}:/workspace"

CMD ["bash"]
