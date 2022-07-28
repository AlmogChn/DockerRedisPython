FROM python:3.7-alpine
ADD . /code
WORKDIR /code
RUN pip install flask
RUN pip install redis
RUN pip install getpass
RUN chmod 644 app.py
CMD ["python", "app.py"]
