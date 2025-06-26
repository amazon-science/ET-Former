FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04
ARG DEBIAN_FRONTEND=noninteractive

# base tools
RUN apt update && apt install -y \
    build-essential vim curl git wget zip \
    imagemagick ffmpeg

# open3d dependencies 
RUN apt update && apt install --no-install-recommends -y \
    libegl1 \
    libgl1 \
    libgomp1 \
    libopenexr-dev

# pip3
RUN apt update && apt install -y python3-pip && \
    pip3 install --upgrade pip

# install pytorch
RUN pip3 install torch==2.0.0+cu118 torchvision==0.15.1+cu118 torchaudio==2.0.1 --index-url https://download.pytorch.org/whl/cu118
RUN pip3 install mmcv-full -f https://download.openmmlab.com/mmcv/dist/cu118/torch2.0/index.html
# RUN pip3 install torch-scatter -f https://data.pyg.org/whl/torch-2.0.0+cu118.html
# RUN pip3 install spconv-cu118

# Other Python packages
RUN pip3 install \
    einops \
    opencv-python \
    empy \
    easydict \
    pyyaml \
    wandb \
    tensorboard \
    tqdm \
    plyfile \
    numba \
    pyqt5 \
    mayavi \
    jaxtyping \
    seaborn \
    scipy \
    omegaconf \
    torchmetrics==0.10.3 \
    fvcore \
    iopath \
    xformers==0.0.18 \
    submitit \
    --extra-index-url https://pypi.nvidia.com \
    cuml-cu11 \
    mmcv-full==1.5.0


RUN pip3 install natten==0.14.6+torch200cu118 -f https://shi-labs.com/natten/wheels/

# clean
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /root