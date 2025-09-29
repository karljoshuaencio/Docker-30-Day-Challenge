FROM alpine:latest

# Create non-root user
RUN adduser -D appuser

USER appuser
CMD ["echo", "Running as non-root user!"]