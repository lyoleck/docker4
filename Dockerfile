FROM python:2
ADD app/requirements.txt /tmp/requirements.txt
ADD app /opt/webapp
RUN DEBIAN_FRONTEND=noninteractive
RUN pip install pystrich && pip install -qr /tmp/requirements.txt && pip install --upgrade setuptools
CMD [ "python", "/opt/webapp/app.py" ]
EXPOSE 5000
