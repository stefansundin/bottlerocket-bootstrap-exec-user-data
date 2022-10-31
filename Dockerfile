FROM debian:bullseye-slim

COPY main.sh .

ENTRYPOINT [ "/main.sh" ]
