FROM tensorflow/tensorflow:1.9.0-gpu-py3

RUN apt-get update \
    && apt-get install -y \
        cmake \
        vim \
        git

RUN cd /usr/local/cuda/lib64 \
    && mv stubs/libcuda.so ./ \
    && ln -s libcuda.so libcuda.so.1 \
    && ldconfig

WORKDIR /projects
COPY . .
RUN mkdir build

CMD ["bash"]

