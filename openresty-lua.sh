# 指定提供服务的端口
OPENRESTY_PORT=9992
# 配置反向代理的 Location
OPENRESTY_LOCATION=/baidu/
# 反向代理到的目标
OPENRESTY_PROXY_PASS=http://www.baidu.com/

# 创建用于保存配置的目录
OPENRESTY_CONFIG=/tmp/openresty
mkdir -p "${OPENRESTY_CONFIG}"

# 生成配置文件
cat << EOT > "${OPENRESTY_CONFIG}"/nginx.conf
server {
    listen 80;
    location "${OPENRESTY_LOCATION}" {
        proxy_pass "${OPENRESTY_PROXY_PASS}";
    }
}
EOT

# 启动服务
docker run -d --rm \
    -p ${OPENRESTY_PORT}:80 \
    -v "${OPENRESTY_CONFIG}":/etc/nginx/conf.d/ \
    bitnami/openresty