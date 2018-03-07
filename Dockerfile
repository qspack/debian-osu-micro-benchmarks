FROM qspack/debian-openmpi

ARG OPENMPI_VERSION=2.0.1
ARG OSU_MICRO_BENCHMARKS_VERSION=5.3
RUN /usr/local/src/spack/bin/spack install openmpi@${OPENMPI_VERSION} osu-micro-benchmarks@${OSU_MICRO_BENCHMARKS_VERSION}
