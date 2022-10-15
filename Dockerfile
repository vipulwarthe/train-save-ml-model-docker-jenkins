FROM centos:7
RUN yum install python3 -y
RUN pip3 install numpy pandas sklearn joblib
RUN mkdir /root/ml/
COPY task.py  /root/ml/
COPY dataset.csv /root/ml/
WORKDIR /root/ml
CMD python3 task.py
