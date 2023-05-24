# Use a base image with Python and Flask installed
FROM python:3.9

# Set the working directory
chat/

# Copy the main.py and base.html files into the container
COPY main.py .
COPY base.html templates/

# Expose port 8000
EXPOSE 8000

# Install any dependencies if required
# RUN pip install <dependency>

# Set the command to run the Flask application
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=8000"]

