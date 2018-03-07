ARG DOCKER_REGISTRY=docker.io
ARG DOCKER_REPO=qspack
ARG FROM_IMG_NAME="debian-openmpi"
ARG FROM_IMG_TAG="latest"
ARG FROM_IMG_HASH=""
FROM ${DOCKER_REGISTRY}/${DOCKER_REPO}/${FROM_IMG_NAME}:${FROM_IMG_TAG}${DOCKER_IMG_HASH}

ARG OPENMPI_VERSION=2.0.1
ARG OSU_MICRO_BENCHMARKS_VERSION=5.3
RUN /usr/local/src/spack/bin/spack install osu-micro-benchmarks@${OSU_MICRO_BENCHMARKS_VERSION} ^openmpi@${OPENMPI_VERSION} 
