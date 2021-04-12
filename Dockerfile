FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y nginx
WORKDIR /app
ADD . /app
RUN apt-get install -y python3-pip
RUN pip3 install -r ./app/requirements.txt
CMD ["python3","./app/app.py"]