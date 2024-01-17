FROM debian:bookworm-slim

COPY main.sh .

ENTRYPOINT [ "/main.sh" ]
