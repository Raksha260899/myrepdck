# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask
RUN pip install flask

# Make port 5000 available to the outside world
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]
