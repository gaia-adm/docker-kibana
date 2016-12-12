FROM kibana:4.3.0

MAINTAINER Boris Belozovsky <boriska70@gmail.com>
RUN /opt/kibana/bin/kibana plugin -i kibana/timelion
RUN chown -R kibana /opt/kibana/optimize/
