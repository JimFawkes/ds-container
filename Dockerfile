# FROM jupyter/scipy-notebook:latest
FROM python:3.7

WORKDIR ~/app

RUN mkdir proj logs data
COPY requirements.txt .
RUN python3 -m pip install -r requirements.txt

EXPOSE 8765:8888
VOLUME /home/ec2-user/data:/usr/src/app/data
VOLUME /home/ec2-user/logs:/usr/src/app/logs

CMD ["python3", "-m", "jupyter", "notebook"]
