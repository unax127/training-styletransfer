FROM tensorflow/tensorflow:0.11.0-gpu-py2.7.9

LABEL maintainer="Cris Valenzuela <cv965@nyu.edu>"

# Copy all files in directory
COPY . /styletransfer

WORKDIR "/styletransfer"

# Install dependencies
RUN pip install -r requirements.txt

# Copy all files in directory
WORKDIR "/data"
RUN wget http://www.vlfeat.org/matconvnet/models/beta16/imagenet-vgg-verydeep-19.mat
RUN wget http://msvocds.blob.core.windows.net/coco2014/train2014.zip
RUN unzip train2014.zip

