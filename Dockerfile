FROM ubuntu:18.04

EXPOSE 8000

RUN apt-get update && \
    apt-get upgrade && \ 
    apt-get install -y wget

# Keeps Python from generating .pyc files in the container
#ENV PYTHONDONTWRITEBYTHECODE=1

# Turns off buffering for easier container logging
#ENV PYTHONUNBUFFERED=1

RUN mkdir /home/output
WORKDIR /home/output
COPY . /home/output/

CMD [ "bash", "hello.sh" ]
