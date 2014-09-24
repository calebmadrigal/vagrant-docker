FROM ubuntu
MAINTAINER Caleb Madrigal
RUN echo "Creating vagrant-docker image"
RUN apt-get update

# Dev tools
RUN apt-get install -y git
RUN apt-get install -y vim

# SSH
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:docker' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN echo "Port 1337" >> /etc/ssh/sshd_config
EXPOSE 1337
CMD ["/usr/sbin/sshd", "-D"]

