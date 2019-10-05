# docker-glibc-builder

A glibc binary package builder in Docker. Produces an ARM64 glibc binary package that can be imported into a rootfs to run applications dynamically linked against glibc.

## Usage

Build a glibc package based on version 2.30 with a prefix of `/usr/glibc-compat`:

    docker run --rm --env STDOUT=1 intrepidde/arm64-alpine-gibc 2.30 /usr/glibc-compat > glibc-bin.tar.gz

You can also keep the container around and copy out the resulting file:

    docker run --name glibc-binary intrepidde/arm64-alpine-gibc 2.30 /usr/glibc-compat
    docker cp glibc-binary:/glibc-bin-2.30.tar.gz ./
    docker rm glibc-binary
