FROM openjdk:8-jre

WORKDIR /server

# Replace the URL with a prebuilt 1.5.2-compatible version
RUN curl -L -o BungeeCord.jar https://ci.md-5.net/job/BungeeCord/548/artifact/proxy/target/BungeeCord.jar


EXPOSE 25565

CMD ["java", "-jar", "BungeeCord.jar"]
