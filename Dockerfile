FROM ubuntu 

LABEL "maintainer"="Joshua Jebaraj"

RUN apt update && apt install curl -y 

RUN curl -s https://raw.githubusercontent.com/armosec/kubescape/master/install.sh | bash 
ENTRYPOINT ["/entrypoint.sh"]