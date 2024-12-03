# Use Python 3.13-slim as the base image
FROM python:3.13-slim

# Set environment variables in the correct format
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . /app/

# Expose the default FastAPI port
EXPOSE 8000

# Start the FastAPI application
CMD ["fastapi", "run"]
