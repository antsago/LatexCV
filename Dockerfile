FROM debian:latest

RUN apt-get -y update

ENV texLocation /src/

WORKDIR ${texLocation}

COPY Curriculum ${texLocation}

RUN apt-get install -y texlive-full

ENTRYPOINT ["pdflatex"]
CMD ["Curriculum.tex"]

#You can recover the created pdf using the command "docker cp ContainerId:/src/Curriculum.pdf DestinationPath"