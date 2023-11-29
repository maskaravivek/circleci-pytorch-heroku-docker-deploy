#Create a ubuntu base image with python 3 installed.
FROM python:3.8.10-slim-buster

#Set the working directory
WORKDIR /app/

#copy all the files
COPY requirements.txt .

#Install the dependencies
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD python app.py