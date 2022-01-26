#docker build . -t beer/golang-crossbuild

docker run -it  --rm -v /Users/beer/beer/libpcap_demo/libpcap_main:/go/src/my/server -w /go/src/my/server -e CGO_ENABLED=1 -e CC=aarch64-linux-gnu-gcc -e GO111MODULE=on  -e CGO_LDFLAGS+="-L/libpcap/libpcap-1.8.1" -e GOPROXY="https://goproxy.cn,direct" beer/golang-crossbuild  --build-cmd "GOOS=linux GOARCH=amd64 go build . " -p "linux/amd64"
