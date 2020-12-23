# 利用Docker构建nanopi-neo-air系统编译环境

## 使用方法

```bash
git pull git@github.com:hyhkjiy/nanopi-neo-air-docker-build.git
cd hyhkjiy/nanopi-neo-air-docker-build
docker build . -t lichee
docker run -it lichee:latest bash
cd lichee/fa_tools
./build.sh -b nanopi-air -p linux -t all
```

然后泡上一杯☕️，等待30分钟左右。
