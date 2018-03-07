FROM qspack/debian-openmpi

ARG OPENMPI_VERSION=2.0.1
RUN /usr/local/src/spack/bin/spack install openmpi@${OPENMPI_VERSION} osu-micro-benchmarks
