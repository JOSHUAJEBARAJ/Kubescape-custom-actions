FROM ubuntu 

LABEL "maintainer"="Joshua Jebaraj"

RUN apt update && apt install curl -y 

RUN curl -s https://raw.githubusercontent.com/armosec/kubescape/master/install.sh | bash 

COPY entrypoint.sh /entrypoint.sh

# change permission to execute the script and
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]