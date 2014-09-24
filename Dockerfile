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
RUN echo 'root:vagrant' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

