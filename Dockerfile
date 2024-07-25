FROM nvidia/cuda:12.5.1-runtime-ubuntu20.04
# Set anaconda path
ENV ANACONDA /opt/anaconda
ENV PATH $ANACONDA/bin:$PATH
RUN apt-get update && apt-get install -y \
    wget

# RUN apt-get update && apt-get install -y --no-install-recommends \
#          wget \
#          libopencv-dev \
#          python3-opencv \
#          build-essential \
#          cmake \
#          git \
#          curl \
#          ca-certificates \
#          libjpeg-dev \
#          libpng-dev \
#          axel \
#          zip \
#          unzip
RUN wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh -P /tmp
RUN bash /tmp/Anaconda3-5.0.1-Linux-x86_64.sh -b -p $ANACONDA
RUN rm /tmp/Anaconda3-5.0.1-Linux-x86_64.sh -rf
# RUN conda install -y pytorch=0.4.1 torchvision cuda91 -c pytorch
# RUN conda install -y -c anaconda pip
# RUN conda install -y -c anaconda yaml
# RUN pip install tensorboard tensorboardX;
