ARG DEBIAN_VERSION
FROM debian:${DEBIAN_VERSION}

RUN apt update && apt upgrade -yq

RUN apt install -yq ninja-build gettext cmake file

COPY ./entrypoint /bin/entrypoint

ENTRYPOINT ["/bin/entrypoint"]