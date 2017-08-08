FROM node:6.11.1-alpine

# Check node version
RUN node -v
# Check node version
RUN npm -v

RUN apk update && apk add bash py-pip

# Check pip version
RUN pip --version

# Install aws eb cli
RUN pip install awsebcli --upgrade --user

RUN touch ~/.profile && echo "export PATH=/root/.local/bin" >> ~/.profile && source ~/.profile && eb --version

CMD ["/bin/sh"]
