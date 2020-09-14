FROM ubuntu
RUN apt-get update 
RUN apt-get install -y python3.7
RUN apt-get install -y python3-pip
RUN pip3 install flask
COPY . /opt/source_code/
ENTRYPOINT FLASK_APP=/opt/source_code/app.py flask run --host=0.0.0.0 --port=8080
