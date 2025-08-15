FROM debian:trixie-slim

COPY main.sh .

ENTRYPOINT [ "/main.sh" ]
