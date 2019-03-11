#!/bin/bash

mkdir ./$1

cd ./$1

git init

echo "${1} README" >> ./README.md

cp ~/tools/newRails/Gemfile .

touch ./Gemfile.lock

cp ~/tools/newRails/Dockerfile .

cp ~/tools/newRails/docker-compose.yml .

cp ~/tools/newRails/.env .

docker build . -t $1

docker-compose build

docker-compose up

docker-compose down

docker-compose run --rm app suspenders $1

cd ../
