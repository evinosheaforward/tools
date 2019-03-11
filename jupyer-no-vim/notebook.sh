#!/bin/bash

docker run -p 8888:8888 -v "$PWD":/home/jovyan/work jupyter/scipy-notebook:2c80cf3537ca
