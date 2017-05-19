FROM tobbenb/webgrabplusplus:latest

MAINTAINER Òscar Casajuana <elboletaire@underave.net>

ADD movistarplus.es.ini elmundo.es.ini WebGrab++.config.xml /config/

ENV TZ Europe/Madrid

RUN echo $TZ > /etc/timezone

ENTRYPOINT ["/etc/my_init.d/startup.sh"]
