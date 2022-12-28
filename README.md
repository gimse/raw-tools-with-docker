# RawTools

See the original proejct for more info https://github.com/kevinkovalchik/RawTools

## Getting started with Docker on Linux arm64

- Install Docker

 - `sudo docker build -t raw-tools-with-docker:latest . && sudo docker run --name raw-tools-with-docker4 --rm -it -v /home/ubuntu/documents/raw-tools-with-docker/raw_data:/raw_data   raw-tools-with-docker:latest ThermoRawFileParser.exe -d /raw_data`


- `sudo docker run --privileged --rm tonistiigi/binfmt --install amd64`
 - `sudo docker run --rm -it --platform=linux/amd64 quay.io/biocontainers/thermorawfileparser:1.3.2--0 ThermoRawFileParser.sh --help`


- 