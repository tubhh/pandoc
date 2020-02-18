FROM pandoc/latex:2.9.2

MAINTAINER Axel Dürkop <axel.duerkop@tuhh.de>

# Install all TeX and LaTeX dependences
RUN apk update && \
    apk add make \
    git \
    ca-certificates \
    lmodern \
    texlive-latex-base \
    texlive-fonts-recommended \
    texlive-generic-recommended \
    texlive-lang-english \
    texlive-lang-german \
    texlive-luatex \
    latex-xcolor \
    texlive-math-extra \
    texlive-latex-extra \
    texlive-bibtex-extra \
    biber \
    fontconfig \
    texlive-xetex && \

# Export the output data
WORKDIR /data
VOLUME ["/data"]

CMD ["/bin/bash"]