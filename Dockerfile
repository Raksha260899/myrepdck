# Use a minimal Linux base image
FROM ubuntu:20.04

# Disable interactive prompts during build
ENV DEBIAN_FRONTEND=noninteractive

# Update system and install Python
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean

# Verify Python version (optional)
RUN python3 --version && pip3 --version

# Set working directory
WORKDIR /app

# Default command (you can customize this)
CMD ["python3"]
