FROM python:latest

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY hello.py /app/
COPY requirements.txt /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 80 on the host
EXPOSE 80 

# Run app.py at container launch
CMD ["python", "hello.py"]