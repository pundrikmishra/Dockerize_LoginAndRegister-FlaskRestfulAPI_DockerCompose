# # FROM alpine:latest
# FROM ubuntu

# RUN apt-get add --no-cache python3-dev \           ##In alpine we use apk to install things whereas in ubuntu we use apt-get to install things
#     && pip3 install --upgrade pip

FROM python:3
RUN apt-get update
RUN apt-get install python
WORKDIR /main
COPY . /main
# RUN pip3 --no-cache-dir install -r requirements.txt
RUN python3 -m pip install --user --no-cache-dir -r requirements.txt
#EXPOSE 5000
#ENTRYPOINT ["python3"]
CMD ["python", "main.py"]