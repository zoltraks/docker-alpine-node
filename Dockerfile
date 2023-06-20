FROM alpine:latest

#RUN echo "UTF-8 Check: Żółw"

#ENV LANG C.UTF-8
#ENV LC_ALL C.UTF-8

RUN echo "Installing updates"

RUN apk -U upgrade

RUN echo "Alpine Linux version: $(cat /etc/alpine-release)"

RUN echo "Adding bash package"

RUN apk add bash

RUN echo "Adding npm package"

RUN apk add npm

WORKDIR /app

ADD . ./

#CMD ["npm", "start"]

CMD ["/bin/bash"]
