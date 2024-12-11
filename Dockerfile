# Base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy application code
COPY app/ /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the application port
EXPOSE 5000

# Start the application
CMD ["python", "app.py"]
