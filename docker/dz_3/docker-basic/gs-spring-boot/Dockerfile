FROM nexus.mir:65011/tools/core-liberica-openjdk-ubuntu:8 AS build
WORKDIR /work
COPY . /work
RUN set -eux \ 
    && ./gradlew build --no-daemon

FROM nexus.mir:65011/tools/core-liberica-openjre-ubuntu:8
EXPOSE 8080
WORKDIR /apps
COPY --from=build /work/build/libs/*.jar /apps/
RUN set -eux \
    && ls -la /apps
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/apps/spring-boot-0.0.1-SNAPSHOT.jar"]

