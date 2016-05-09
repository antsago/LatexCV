FROM debian:latest

RUN apt-get -y update

RUN apt-get install -y texlive-full

ENV texLocation /src/

WORKDIR ${texLocation}

COPY Curriculum ${texLocation}

ENTRYPOINT ["pdflatex"]
CMD ["Curriculum.tex"]