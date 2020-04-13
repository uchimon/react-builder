# base image
FROM node:alpine3.11

WORKDIR /app

#RUN npm init -y
#RUN npm install -D webpack webpack-cli babel-loader @babel/core  @babel/preset-env @babel/preset-react
#RUN npm install react react-dom
#RUN npm install axios

#---
# docker build -t reactb .
# docker run --rm --name rbuilder -d -t react-builder
# docker run --rm --name rbuilder -v $PWD/front:/zeus/in -d -t react-builder

# docker run --rm --name zeus-babel -v $PWD/front:/zeus/in -v $PWD/assets/js:/zeus/out -d -t zeus-babel
# docker exec -it zeus-babel /bin/sh
# npx babel --watch /zeus/in --out-dir /zeus/out --presets react-app/prod


