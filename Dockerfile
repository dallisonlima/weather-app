# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Define environment variable
ENV OPENWEATHERMAP_API_KEY 'ee4b9b1e8cad2bc72ca10ab20ab190df'

# Run app.py when the container launches
CMD ["python3", "app.py", "--host", "0.0.0.0", "--port", "80"]

# Expose port 80 to the outside world
EXPOSE 80/tcp