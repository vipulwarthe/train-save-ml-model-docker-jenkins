FROM ubuntu:20.04

# Update packages and install Python 3 and pip3
RUN apt-get update && \
    apt-get install -y python3-pip

# Install Python packages
RUN pip3 install numpy pandas scikit-learn joblib

# Create directory for machine learning files and copy files
RUN mkdir /root/ml/
COPY task.py  /root/ml/
COPY dataset.csv /root/ml/

# Set working directory
WORKDIR /root/ml
