FROM ubuntu:17.10

# get core libraries and prep for additional repos 
RUN apt-get update && apt-get upgrade -y && apt-get install -y apt-transport-https ca-certificates curl software-properties-common unzip rsync ssh git

# Add repo for docker
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Add repo for YARN
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Add the latest version of nodejs
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

# Install the rest of the software deps
RUN apt-get update && apt-get upgrade -y && apt-get install -y docker-ce python python-pip python-dev build-essential nodejs yarn

# add some finishing touches
RUN pip install --upgrade pip
RUN pip install --upgrade virtualenv
RUN pip install docker-compose
RUN pip install awscli

# install docker-machine
RUN curl -L https://github.com/docker/machine/releases/download/v0.12.2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine && chmod +x /tmp/docker-machine && mv /tmp/docker-machine /usr/local/bin/docker-machine
# install vault
RUN curl -L curl -L https://releases.hashicorp.com/vault/0.8.0/vault_0.8.0_linux_amd64.zip >/tmp/vault_0.8.0_linux_amd64.zip && unzip /tmp/vault_0.8.0_linux_amd64.zip -d /tmp/ && mv /tmp/vault /usr/local/bin/vault && rm /tmp/vault_0.8.0_linux_amd64.zip
