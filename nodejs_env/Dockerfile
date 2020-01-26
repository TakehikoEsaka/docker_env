## alpine is light linux distribution, which consists of "busybox" and "musl".
## image which includs node js (npm command is installed)
## you can control nodejs here by controling image number
#FROM node:12.2.0-alpine
## image which doesn't include node js
FROM alpine:3.7
#apk : alpine image package manager. we can't use apt-get command on alpine.
#Install nodejs and npm
RUN apk add --update nodejs nodejs-npm

#Some default command on bahs doesn't installed, you can install them using apk.
RUN apk update
RUN apk add curl\
    && apk add vim

# This directory is on container, not host
WORKDIR /app

## install vue-cli 3.x usin npm command.
RUN apk update &&\
    npm install -g @vue/cli
## If you want to use vue-cli 2.x, run following command.
#RUN apk update &&\
#    npm install -g vue-cli
# --virtual : (it is same as "--no-install-recommends" on apt ) don't install recommended packages.
# -quiet : don't show logs

##  it exposes the port where our app is running that is port 8080.
EXPOSE 9000

CMD ["/bin/sh"]

#質問事項
#bash, shell, ash(busybox)の違いとは？dockerで使うコマンドを切り替えるにはどうしたらいいのか？
#bashでsource filesが出来るようになるとはどう意味なのか？

#次回のTodo.Shellをbashと置き換える．これによって，source files出来るとはどう意味可を探る．
#RUN rm /bin/sh && ln -s /bin/bash /bin/sh

#次回のTodo. 以下を通るようにする．
#RUN mkdir nodejs-hello
#RUN cd nodejs-hello
#RUN npm init
#RUN npm install express --save

# 次回のTodo.以下を通るようにする．
#npmをインストールしてnode.jsのstableをインストールする
#RUN npm install -g n && n stable
#RUN npm install -g npm@4.0
#RUN npm install -g npm@latest

# 次回のTodo. 以下（nvmで任意のnode versionをインストール出来るようにする．）
#ENV NVM_DIR /usr/local/nvm # or ~/.nvm , depending
#ENV NODE_VERSION 12.2.0
# Install nvm with node and npm
#RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.20.0/#install.sh | bash \
#    && . $NVM_DIR/nvm.sh \
#    && nvm install $NODE_VERSION \
#    && nvm alias default $NODE_VERSION \
#    && nvm use default
#ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
#ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH
#ここにインストールしたいnodeのversionを指定する．
#RUN \
#    source ~/.bashrc && \
#    nvm install -s 12.2.0 && \
#    nvm cache clear
