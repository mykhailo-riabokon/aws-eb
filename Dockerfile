FROM python:2.7-alpine

RUN pip install awsebcli --upgrade
RUN apk update && apk add git bash
RUN eb --version
