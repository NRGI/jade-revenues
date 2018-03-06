FROM	centos:centos7

RUN yum install -y  epel-release && \
    yum install -y nginx \
    easy_install \
    supervisor \
    gettext \
    && cp /usr/bin/envsubst /usr/local/bin/envsubst \
    && yum remove -y epel-release

#papertrail log
RUN curl -O -L https://github.com/papertrail/remote_syslog2/releases/download/v0.20/remote_syslog2-0.20-1.x86_64.rpm && \
    yum install -y remote_syslog2-0.20-1.x86_64.rpm \
    && rm -r remote_syslog2-0.20-1.x86_64.rpm

COPY . /src

COPY docker/supervisord.conf /etc/supervisord.conf

RUN ["chmod", "+x", "/src/docker/docker-entrypoint.sh"]

EXPOSE 80

CMD /src/docker/docker-entrypoint.sh
