FROM registry.hub.docker.com/library/ubuntu:22.04


RUN apt-get update -y
RUN apt install sudo -y
RUN sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common -y
RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN sudo apt-add-repository 'deb https://download.mono-project.com/repo/ubuntu stable-focal main'
RUN sudo apt install mono-complete -y

RUN apt-get install -y unzip 

ADD https://github.com/compomics/ThermoRawFileParser/releases/download/v1.4.1/ThermoRawFileParser1.4.1.zip ./ThermoRawFileParser1.zip
RUN unzip ThermoRawFileParser1.zip

ENTRYPOINT ["mono"]