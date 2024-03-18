FROM alpine:latest

RUN mkdir /work

WORKDIR /work

RUN wget https://github.com/tablacus/TablacusExplorer/releases/download/23.9.13/te230913.zip \
    && mkdir ./te

COPY ./entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]