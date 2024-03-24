# Use the official Python 3.9 slim image as the base image
FROM python:3.9-slim

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the requirements.txt file from the local directory to the /app directory inside the container
COPY requirements.txt requirements.txt

# Install Python dependencies listed in requirements.txt using pip
RUN pip install -r requirements.txt

# Copy all files from the local directory (where the Dockerfile is located) into the /app directory inside the container
COPY . .

# Specify the command to run when the container starts
CMD ["python", "app.py"]
