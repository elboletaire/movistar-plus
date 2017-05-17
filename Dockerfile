FROM tobbenb/webgrabplusplus:latest

MAINTAINER Òscar Casajuana <elboletaire@underave.net>

ADD movistarplus.es.ini WebGrab++.config.xml /config/

ENTRYPOINT ["/etc/my_init.d/startup.sh"]
