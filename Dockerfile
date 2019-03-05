FROM alpine:latest
RUN apk add R R-dev python3 python3-dev gcc g++ gfortran make freetype-dev libjpeg-turbo-dev libxml2-dev 
RUN pip3 install numpy && pip3 install cnvkit
ADD install.R /
RUN Rscript /install.R