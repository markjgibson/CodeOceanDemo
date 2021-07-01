# hash:sha256:707fc2ccb0ffd97a3fdc830addd36be37df29ae030d407ce992d4955c67b9701
FROM registry.codeocean.com/codeocean/r-studio:1.4.1106-r4.0.5-ubuntu18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN Rscript -e 'remotes::install_version("data.table", "1.14.0")' \
    && Rscript -e 'remotes::install_version("tidyverse", "1.3.1")'
