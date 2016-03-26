FROM ubuntu

COPY tcache /opt/tcache

RUN chmod 755 /opt/tcache

CMD /opt/tcache
