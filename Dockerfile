FROM eclipse-temurin:17-jdk

WORKDIR /app

ADD https://api.papermc.io/v2/projects/velocity/versions/3.3.0-SNAPSHOT/builds/321/downloads/velocity-3.3.0-SNAPSHOT-321.jar velocity.jar

COPY velocity.toml ./
COPY entrypoint.sh ./entrypoint.sh

RUN chmod +x ./entrypoint.sh

EXPOSE 25565

ENTRYPOINT ["./entrypoint.sh"]
