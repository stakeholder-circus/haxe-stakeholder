FROM ubuntu:24.04 AS build
RUN apt-get update \
    && apt-get install --yes --no-install-recommends haxe neko \
    && find /var/lib/apt/lists -mindepth 1 -delete
WORKDIR /src
COPY src/Stakeholder.hx src/Stakeholder.hx
COPY tests/test_cli.sh tests/test_cli.sh
RUN mkdir -p /out \
    && haxe -cp src -main Stakeholder -neko /out/stakeholder.n \
    && BIN=/out/stakeholder.n NEKO=neko tests/test_cli.sh
FROM ubuntu:24.04
RUN apt-get update \
    && apt-get install --yes --no-install-recommends neko \
    && find /var/lib/apt/lists -mindepth 1 -delete \
    && groupadd --system stakeholder \
    && useradd --system --gid stakeholder --home-dir /nonexistent --shell /usr/sbin/nologin stakeholder
COPY --from=build /out/stakeholder.n /app/stakeholder.n
USER stakeholder
ENTRYPOINT ["neko", "/app/stakeholder.n"]
CMD ["--list-values"]
