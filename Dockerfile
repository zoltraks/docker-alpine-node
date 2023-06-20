FROM alpine:latest

RUN echo "UTF-8 Check: Żółw"

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN echo "UTF-8 Check: Żółw"

RUN echo "Adding npm package"

RUN apk add bash

RUN apk add npm

WORKDIR /app

ADD . ./

CMD ["npm","start"]

CMD ["/bin/bash"]
