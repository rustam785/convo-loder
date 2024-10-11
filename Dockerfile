
# Use an official Python 3.9 runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that your app runs on
EXPOSE 8000

# Command to run the application
CMD ["python", "app.py"]
