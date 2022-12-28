# RawTools

See the original proejct for more info https://github.com/kevinkovalchik/RawTools

## Getting started with Docker on Linux arm64

- Install Docker

 - `sudo docker build -t raw-tools-with-docker:latest . && sudo docker run --name raw-tools-with-docker4 --rm  -v /home/ubuntu/documents/raw-tools-with-docker/raw_data:/raw_data   raw-tools-with-docker:latest RawTools.exe -f /raw_data/ch_23Aug2018_HeLa_Std_1.raw`