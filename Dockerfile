FROM ubuntu:latest
MAINTAINER vinay

RUN apt-get update; apt-get install -y \
    clamav-freshclam cron
RUN sed -i -e '/DatabaseOwner / s/ .*/ root/' /etc/clamav/freshclam.conf
#RUN freshclam

VOLUME /var/lib/clamav


RUN echo "*/2 * * * * root /usr/bin/freshclam --quiet" >/etc/cron.d/certbot
RUN service cron start

CMD [ "sh", "-c", "freshclam -d  && cron -f" ]
#CMD [ "cron", "-f" ]
