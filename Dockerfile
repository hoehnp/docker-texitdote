FROM adoptopenjdk/openjdk8:jdk8u272-b10-alpine

WORKDIR /root
RUN apk --no-cache add apache-ant git \
&& git clone https://github.com/sylvainhalle/textidote \
&& cd textidote \
&& ant download-deps \
&& ant
