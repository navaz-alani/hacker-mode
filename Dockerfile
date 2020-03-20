FROM homebrew/brew
LABEL maintainer="Navaz Alani <nalani@uwaterloo.ca>"

ENV WD=hacker-mode
RUN mkdir /${WD}
WORKDIR /${WD}

ADD --chown=root install.sh /${WD}
RUN chmod +x install.sh
RUN ./install.sh
RUN rm install.sh
