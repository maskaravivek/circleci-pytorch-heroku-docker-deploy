#Create a ubuntu base image with python 3 installed.
FROM python:3.8

#Set the working directory
WORKDIR /

#copy all the files
COPY requirements.txt .

#Install the dependencies
RUN apt-get -y update
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD python app.py