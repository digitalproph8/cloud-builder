# syntax=docker/dockerfile:1
FROM alpine:3.20

LABEL org.opencontainers.image.title="Testcontainers Cloud Go example"
LABEL org.opencontainers.image.description="Minimal image built via Docker Build Cloud in CI"

# Create non-root user
RUN adduser -D app
USER app
WORKDIR /home/app

# Copy a small file just to have build context
COPY README.md /home/app/README.md

# Simple default command
CMD ["sh", "-c", "echo Testcontainers Cloud Go example image && head -n 3 /home/app/README.md"]
