FROM golang:1.14-buster AS gobuild

WORKDIR /go/src/http-echo
COPY . .

RUN go get -d -v
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /go/bin/app


FROM scratch

COPY --from=gobuild /go/bin/app /go/bin/app
ENTRYPOINT ["/go/bin/app"]
EXPOSE 8080
