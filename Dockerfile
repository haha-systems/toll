# Use an official Python runtime as a parent image
FROM python:3.11-alpine

LABEL authors="xiy"

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE $PORT

# Run gunicorn server
CMD gunicorn main:app --bind 0.0.0.0:$PORT
