FROM ubuntu:jammy

RUN apt-get update && apt-get install -y curl

ADD get-latest-version.sh .
RUN bash get-latest-version.sh

ENV USER NaN
ENV POOL pool.supportxmr.com:5555
ENV PASSWORD x
ENV ALGO rx/0
ENV DONATE_LEVEL 0
ENV RETRY_SWITCH_POOL 5
ENV RETRY_TIMEOUT_SECONDS 5

EXPOSE 3333/tcp
EXPOSE 3334/tcp

ENTRYPOINT ./xmrig-proxy --donate-level=$DONATE_LEVEL -r $RETRY_SWITCH_POOL -R $RETRY_TIMEOUT_SECONDS -b 0.0.0.0:3333 --http-enabled --http-host=0.0.0.0 --http-port=3334 -o $POOL -u $USER -p $PASSWORD --algo=$ALGO
