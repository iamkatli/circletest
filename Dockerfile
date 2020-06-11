FROM alpine:3.8

ARG AQUA_SERVER_URL
ARG AQUA_USERNAME
ARG AQUA_PASSWORD

ADD https://get.aquasec.com/4.6.0/microscanner .
RUN chmod +x microscanner
RUN ./microscanner --no-verify --html
RUN rm -rf /microscanner
ENTRYPOINT [ "echo" ]
