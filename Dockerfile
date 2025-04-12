FROM openjdk:8-jre

WORKDIR /server

# Install BungeeCord
RUN curl -o BungeeCord.jar https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/target/BungeeCord.jar

# Expose the BungeeCord port
EXPOSE 25565

# Start BungeeCord
CMD ["java", "-jar", "BungeeCord.jar"]
