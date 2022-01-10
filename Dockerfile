FROM python:3.6-alpine

LABEL shurabh@gmail.com

COPY requirements.txt test.py /tmp/
RUN BUILD_LIB=1 pip --no-cache-dir install -r /tmp/requirements.txt \
    && apk del build
CMD ["python /tmp/test.py"]
