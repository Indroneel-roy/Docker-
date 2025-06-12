# Use Python 3.9 base image
FROM python:3.7

# Set working directory
WORKDIR /app

COPY . /app

# Copy requirements and install dependencies

RUN pip install -r requirements.txt

# Expose the application port
EXPOSE 8501

# Command to start Streamlit application
CMD ["streamlit", "run", "app.py"]
