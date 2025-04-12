FROM openjdk:8-jre

WORKDIR /server

# Use curl with -L to follow redirects
RUN curl -L -o BungeeCord.jar https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar

EXPOSE 25565

CMD ["java", "-jar", "BungeeCord.jar"]
