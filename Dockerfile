FROM nowox/latex:1.0

RUN apt-get update
RUN apt-get install -y texlive-science
RUN rm -rf /var/lib/apt/lists/*