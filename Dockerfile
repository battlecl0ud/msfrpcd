FROM kalilinux/kali-linux-docker

RUN apt update && apt install -y postgresql \
								 apache2 \
								 python-pip \
								 python-dev \
								 build-essential \
								 git \
								 metasploit-framework \
								 armitage
WORKDIR /root
COPY database.yml /root/.msf4/database.yml
COPY entry.sh /root
ENV MSF_DATABASE_CONFIG /root/.msf4/database.yml
EXPOSE 80 443 55553
ENV RHOST=0.0.0.0
ENV RPASS=battlecl0udmsf
ENTRYPOINT ["./entry.sh"]