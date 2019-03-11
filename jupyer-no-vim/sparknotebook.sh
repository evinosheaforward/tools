#!/bin/bash

docker run -p 8888:8888 -v "$PWD":/home/jovyan/work jupyter/pyspark-notebook
