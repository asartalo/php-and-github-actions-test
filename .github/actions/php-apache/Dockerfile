FROM docker:stable

COPY entrypoint.sh /entrypoint.sh
COPY entrypoint-server.sh /entrypoint-server.sh
COPY Dockerfile-server /Dockerfile
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

