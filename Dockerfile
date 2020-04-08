ARG GO_VERSION
FROM golang:${GO_VERSION}-alpine AS builder
RUN apk add --update --no-cache ca-certificates make git curl gcc libc-dev
RUN mkdir -p /build
WORKDIR /build
COPY . /build/
RUN go mod download
ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GOARCH=amd64
RUN go build -o go-with-github-workflow .

FROM golang:${GO_VERSION}-alpine 
RUN apk add --update --no-cache ca-certificates git gcc libc-dev
ENV GO111MODULE on
COPY --from=builder /build/go-with-github-workflow /bin/go-with-github-workflow
ENTRYPOINT ["/bin/go-with-github-workflow"]
