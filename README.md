# Tensorflow docker building environment
## Description

This repo was created to run precompiled tensorflow-gpu v1.9.0 to use it to compile custom layers / ops etc.

## Running
1. Copy your files to `projects` to compile it later. (You can use https://github.com/taxfromdk/tensorflow_dense_op as a base, you need delete first two `set`s in `CMakeLists.txt`)
2. `docker-compose build`
3. `docker-compose run app`
4. Move to your projects and build it.
5. `projects` directory is linked to local directory, so compiled files will be there once you exit container.
