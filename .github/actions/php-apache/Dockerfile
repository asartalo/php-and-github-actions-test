FROM docker:stable

COPY entrypoint-old.sh /entrypoint.sh
COPY entrypoint.sh /entrypoint-server.sh
COPY Dockerfile-server /Dockerfile
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

