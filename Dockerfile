FROM golang:1.16

LABEL "version"="0.1"

# Enable Go modules
ENV GO111MODULE=on

# download the oapi-codegen packages
RUN go get github.com/deepmap/oapi-codegen/cmd/oapi-codegen

# Setup the entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Run commands
ENTRYPOINT ["/entrypoint.sh"]