# Dockerfile to analyse results of the trades in the T1 and have a summary

FROM tmlts/r-base

MAINTAINER 'Vladimir Zhbanko' <vladimir.zhbanko@gmail.com>


## create directories
RUN mkdir -p /01_data
RUN mkdir -p /02_code
RUN mkdir -p /03_output

## add custom functions
ADD 02_code/get_profit_factorDF.R /02_code/
ADD 02_code/import_data.R /02_code/
ADD 02_code/check_if_optimize.R /02_code/

## copy working script
COPY 02_code/script2run.R /script2run.R

## run the script on running container
CMD Rscript /script2run.R
