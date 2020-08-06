#!/bin/bash

aws configure set region cn-north-1
git clone https://github.com/UltraBrightEducation/expression_detector.git

#wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
#  && bash Miniconda3-latest-Linux-x86_64.sh -p ${HOME}/miniconda3 -b \
#  && rm -f Miniconda3-latest-Linux-x86_64.sh && \
#export PATH=${HOME}/miniconda3/bin:${PATH} && \
#conda update -y conda && \
#conda init && \
#source ~/.bashrc

#conda create -n expression_detector python=3.6 && \
#conda activate expression_detector

source activate tensorflow_p36

cd expression_detector
pip install -r requirements-ec2.txt

mkdir dataset
aws s3 cp s3://utech2020/expression_detector/emotions_train_dataset.csv dataset/
tar xzf dataset.tar.gz