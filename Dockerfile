# Pull base image
FROM python:3.8.7-slim

# install netcat
RUN apt-get update && \
    apt-get -y install netcat git && \
    apt-get clean

# Set some env varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY requirements.txt /code/requirements.txt
RUN pip install -r requirements.txt

# Add entrypoint.sh
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Copy project
COPY . /code/

# Run server
CMD ["/entrypoint.sh"]
