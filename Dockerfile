FROM kibana:5.0.2

MAINTAINER Boris Belozovsky <boriska70@gmail.com>

RUN /bin/echo https_proxy=$https_proxy > ~/.wgetrc

RUN /usr/bin/wget https://artifacts.elastic.co/downloads/packs/x-pack/x-pack-5.0.2.zip -O /tmp/x-pack-5.0.2.zip
RUN su kibana && /usr/share/kibana/bin/kibana-plugin install file:///tmp/x-pack-5.0.2.zip

RUN /bin/echo xpack.security.enabled: false >> /etc/kibana/kibana.yml

RUN chown -R kibana /usr/share/kibana/optimize/

