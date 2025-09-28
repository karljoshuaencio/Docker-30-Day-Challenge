# ====== Stage 1: Builder ======
FROM golang:1.20 AS builder

WORKDIR /app

# Copy Go files
COPY go.mod ./
COPY main.go ./

# Build static binary for Linux
RUN CGO_ENABLED=0 GOOS=linux go build -o myapp .

# ====== Stage 2: Runtime ======
FROM alpine:latest

WORKDIR /app

# Copy binary from builder stage
COPY --from=builder /app/myapp .

# Ensure binary is executable
RUN chmod +x myapp

# Run the app
CMD ["./myapp"]
