[![CircleCI](https://circleci.com/gh/gaia-adm/docker-kibana.svg?style=svg)](https://circleci.com/gh/gaia-adm/docker-kibana)

#Customizable Kibana image

Build the image: docker build --build-arg https-proxy=http://foo:2020 -t gaiaadm/kibana .

In order to run manually: ```docker run --rm -it --name kibana -p 5601:5601 --link es:elasticsearch gaiaadm/kibana```

NOTE: kibana starts slowly due to X-PACK (~1.5-2 min till ready)
