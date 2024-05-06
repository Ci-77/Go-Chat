FROM golang:alpine

# 为我们的镜像设置必要的环境变量
ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64 \
	GOPROXY="https://goproxy.cn,direct"
# 添加工作路径

WORKDIR /the/workdir/path

# 运行指令
RUN make http 
RUN make commet

# 添加存储
VOLUME /etc/data

# 端口暴露
EXPOSE 8989
# 待添加