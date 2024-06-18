# Use an official Python runtime as a parent image
FROM python:3.8-slim

LABEL authors="xiy"

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV PORT 8000

# Run gunicorn server
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:$PORT"]
