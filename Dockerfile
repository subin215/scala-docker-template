FROM java:latest

MAINTAINER subinsapkota@gmail.com

ADD <yourProjectName>.zip /

RUN unzip <yourProjectName>.zip \
	&& rm <yourProjectName>.zip

WORKDIR /<yourProjectName>

RUN ["chown", "-R", "daemon", "."]

USER daemon

ENTRYPOINT ["bin/project"]

CMD []

EXPOSE 9000