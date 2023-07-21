# Build stage
FROM golang:1.20 AS build-env

WORKDIR /app

# Copy the source
COPY main.go .

# Build the Go app
RUN go build -o /main .

# Final stage
FROM busybox
COPY --from=build-env /main /main

# Expose port 54321 to the outside world
EXPOSE 54321

# Run the binary program
CMD ["/main"]
