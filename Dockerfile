FROM gradle:6.7.0-jdk8
WORKDIR '/mtom-server'
COPY /mtom-server .
RUN ls
RUN /bin/bash gradlew build
CMD ["java","-jar","build/libs/mtom-server.jar"]

EXPOSE 9090
