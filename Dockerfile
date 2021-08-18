FROM alpine

RUN apk add tzdata
RUN cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime
RUN apk del tzdata
RUN apk add python2
RUN mkdir www
RUN cd www
### 구동시 무한반복되어 일단 주석처리
### RUN python2 -m SimpleHTTPServer 8000
