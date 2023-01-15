FROM mono:6


RUN apt-get update -y

RUN apt-get install -y unzip 

ADD https://github.com/compomics/ThermoRawFileParser/releases/download/v1.4.1/ThermoRawFileParser1.4.1.zip ./ThermoRawFileParser1.zip
RUN unzip ThermoRawFileParser1.zip

ENTRYPOINT ["mono"]