FROM node:12

# instalar python
RUN apt-get update && apt-get install -y python python3-pip python-dev 
# instalar zip
RUN apt-get install zip && rm -rf /var/lib/apt/lists/*

# aws-cli Version 2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip
RUN ./aws/install && aws --version

# instalar angular 9
ENV ANGULAR_CLI_VERSION=9.1.15
RUN npm install -g \
	@angular/cli@${ANGULAR_CLI_VERSION}
