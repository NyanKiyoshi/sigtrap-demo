FROM alpine

ADD . /app

WORKDIR /app
RUN apk --no-cache add musl-dev python3 gdb gcc make && make build

CMD [ "/usr/bin/gdb", "python3", "-ex", "run main.py" ]

