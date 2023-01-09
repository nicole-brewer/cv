
FROM rocker/rstudio:latest

LABEL maintainer='Nicole Brewer'

RUN R -e  "install.packages(c('rmarkdown', 'scholar', 'remotes'), repos =  'https://cloud.r-project.org/' )"
RUN R -e "remotes::install_github('mitchelloharawild/vitae', upgrade = 'always', dependencies = TRUE, repos = 'https://cloud.r-project.org/')"

# The first time I try to call rmarkdown::render('cv.Rmd')
# after loading this image, it take a really long time to
# install things. Can't seem to figure out how to intall
# thees things independently of the cv, so I will render
# cv.PDF while building this container to cut down on
# build time on future runs

#COPY . /workspace
#WORKDIR /workspace
#RUN R -e "rmarkdown::render('/workspace/cv.Rmd')"

ENV USER rstudio
