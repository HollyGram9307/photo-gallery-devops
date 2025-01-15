# 使用 Nginx 官方镜像
FROM nginx:latest

# 复制项目文件到 Nginx 的默认静态文件目录
COPY . /usr/share/nginx/html

# 复制自定义 Nginx 配置文件到容器内
COPY nginx.conf /etc/nginx/nginx.conf

# 确保文件权限为 755（可读、可执行）
RUN chmod -R 755 /usr/share/nginx/html

# 设置文件所有者为 Nginx 用户（默认 nginx）
RUN chown -R nginx:nginx /usr/share/nginx/html

# 暴露 Nginx 的默认端口
EXPOSE 80
