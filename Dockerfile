
FROM rocker/verse:latest

LABEL maintainer='Nicole Brewer'

RUN R -e "install.packages(c('rcrossref', 'rorcid', 'tic', 'rlang', 'glue', 'scholar', 'lubridate', 'here', 'rsvg', 'readxl', 'xfun', 'yaml', 'vctrs', 'pillar', 'ggplot2', 'fontawesome', 'kableExtra', 'huxtable', 'gridExtra', 'covr', 'rorcid', 'testthat', 'stringr', 'htmltools', 'knitr', 'readr', 'dplyr', 'timelineS', 'magrittr', 'remotes' ), repos =  'https://cloud.r-project.org/' )" && \
 R -e "remotes::install_github('mitchelloharawild/vitae', upgrade = 'always', dependencies = TRUE, repos = 'https://cloud.r-project.org/')" && \
 apt-get install -y texlive-base texlive-latex-base && \
 apt-get install -y texlive-latex-recommended && \
 apt-get install -y texlive-xetex && \
 apt-get install -y texlive-fonts-extra && \
 apt-get autoremove -y && \
 apt-get clean

ENV USER rstudio
