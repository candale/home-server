FROM ubuntu:jammy

RUN apt-get update && apt-get install netcat -y
WORKDIR /app
ADD entrypoint.sh /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
