FROM continuumio/anaconda3:5.1.0

RUN conda update -n base conda \
  && conda create -n rgdm python=3.6 \
  && . activate rgdm \
  && conda install -c conda-forge opencv=4.1.0

VOLUME /data

EXPOSE 8888

CMD jupyter notebook --notebook-dir=/data/notebooks --ip=0.0.0.0 --port=8888 --no-browser --allow-root

