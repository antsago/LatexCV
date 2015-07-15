FROM debian:latest

RUN apt-get -y update

RUN apt-get install -y texlive-full

ENV texLocation /src/

WORKDIR ${texLocation}

COPY Curriculum ${texLocation}

ENTRYPOINT ["pdflatex"]
CMD ["Curriculum.tex"]

#You can recover the created pdf using the command "docker cp ContainerId:/src/Curriculum.pdf DestinationPath"