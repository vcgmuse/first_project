# Dockerfile

# Use the official Python image as a base
FROM python:3.11.4
RUN pip install --upgrade pip
# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the content of the local src directory to the working directory
COPY . .

# Command to run the Flask app
CMD ["python", "main.py"]
