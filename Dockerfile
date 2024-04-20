# Auto Generated Dockerfile
FROM ballerina/jvm-runtime:2.0

LABEL maintainer="sameera.madushan@gmail.com"

COPY target/bin/myapp.jar /home/ballerina/jars/ 
RUN addgroup troupe \
    && adduser -S -s /bin/bash -g 'ballerina' -G troupe -D ballerina \
    && apk add --update --no-cache bash \
    && rm -rf /var/cache/apk/*

WORKDIR /home/ballerina

EXPOSE  9070
USER ballerina

CMD java -Xdiag -cp "sameera-myapp-0.1.0.jar:jars/*" 'sameera.myapp.0.$_init'
