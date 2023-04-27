FROM haproxy:1.7-alpine

COPY ./ /

USER root
RUN chmod 755 /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
# ENTRYPOINT ["docker-entrypoint.sh"]
# FROM haproxy:1.7-alpine
# COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
