# docker-kibana

Build the image: ```docker build --build-arg https-proxy=http://foo:2020  -t gaiaadm/kibana .```


docker run --rm -it --name kibana -p 5601:5601 --link es:elasticsearch gaiaadm/kibana:timelion
