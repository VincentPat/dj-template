FROM node:10.16.0-alpine
WORKDIR /app
COPY . .

# 安装nginx
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
  apk add nginx && \
  mkdir /run/nginx/

# 拷贝nginx配置文件
COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf

# 安装依赖
RUN yarn

# 构建
RUN yarn build

# 默认暴露8000端口
EXPOSE 8000

# 运行nginx
CMD nginx -g "daemon off;"