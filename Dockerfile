FROM ubuntu@sha256:8ae9bafbb64f63a50caab98fd3a5e37b3eb837a3e0780b78e5218e63193961f9

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
    build-essential \
    clang \
    cmake \
    gdb \
    git \
    vim

RUN useradd -ms /bin/bash tdd
USER tdd
WORKDIR /home/tdd

COPY --chown=tdd . .

ENTRYPOINT ["/bin/bash"]
