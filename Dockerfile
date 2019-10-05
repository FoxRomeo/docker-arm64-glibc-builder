FROM arm64v8/ubuntu:19.04
MAINTAINER Oliver Faßbender <git.docker-arm64-glibc-builder@intrepid.de>
# based on https://github.com/sgerrand/docker-glibc-builder
# by Sasha Gerrand <github+docker-glibc-builder@sgerrand.com>
ENV PREFIX_DIR /usr/glibc-compat
ENV GLIBC_VERSION 2.30
RUN apt-get -q update \
	&& apt-get -qy install \
		bison \
		build-essential \
		gawk \
		gettext \
		openssl \
		python3 \
		texinfo \
		wget
COPY configparams /glibc-build/configparams
COPY builder /builder
ENTRYPOINT ["/builder"]
