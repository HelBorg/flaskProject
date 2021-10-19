FROM ubuntu:latest
MAINTAINER Elena Borg 'letters1998@mail.ru'
RUN apt-get update -y
RUN apt-get install -y python3-pip python3 build-essential

COPY requirements.txt .
COPY /cashman /cashman
WORKDIR .

RUN pip3 install -r requirements.txt

EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["cashman/index.py"]