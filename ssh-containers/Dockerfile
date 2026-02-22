FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y openssh-server sudo curl && \
    mkdir -p /var/run/sshd

RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config && \
    echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config && \  
    echo 'PubkeyAuthentication yes' >> /etc/ssh/sshd_config 

RUN mkdir -p /root/.ssh && chmod 700 /root/.ssh

COPY authorized_keys /root/.ssh/authorized_keys

RUN chmod 600 /root/.ssh/authorized_keys

# Запуск SSH-сервера
CMD ["/usr/sbin/sshd", "-D"]

