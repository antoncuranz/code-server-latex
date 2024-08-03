FROM ghcr.io/coder/code-server:4.91.1

USER root

RUN apt-get update \
  && apt-get install -y texlive-full latexmk latexdiff

RUN /usr/bin/code-server --install-extension vscodevim.vim
RUN /usr/bin/code-server --install-extension James-Yu.latex-workshop

USER 1000

