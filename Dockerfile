FROM node:8.12.0-alpine

WORKDIR /code

RUN npm install yarn -g

COPY package.json .

RUN yarn install 
RUN yarn global add cross-env

COPY . .

CMD ["sh", "run.sh"]
#注意： 在安装别的依赖时候，运行 docker-compose exec web npm install module-name-here 这样就可以安装依赖包了。会自动同步到当前目录的package.json
#一般在开发中使用 docker-compose run 来运行容器，之后进行安装