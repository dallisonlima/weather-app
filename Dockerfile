# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5002 to the outside world
EXPOSE 5002

# Define environment variable
ENV OPENWEATHERMAP_API_KEY 'ee4b9b1e8cad2bc72ca10ab20ab190df'

# Run app.py when the container launches
CMD ["python3", "app.py"]
