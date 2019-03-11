# To use either of these with the scripts in the tools/ directory:

## For data science notebooks (From: [jupyter/scipy-notebook](https://hub.docker.com/r/jupyter/scipy-notebook/) ):

```
cd notebook/
docker build .
docker tag <container-id> notebook-vim
```


## For spark notebooks (From: [jupyter/pyspark-notebook](https://hub.docker.com/r/jupyter/pyspark-notebook/) )

```
cd sparknotebook/
docker build .
docker tag <container-id> sparknotebook-vim
```

### Then, you can run either (or make an alias in ~/.bashrc):

```
tools/notebook.sh
```
or
```
tools/sparknotebook.sh
```

These scripts will create a volume in your current directory so you want to run them in your working directory.
Lastly, to access you will have to go to localhost:8888 in your browser and copy the token that is output from running the script.
