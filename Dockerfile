FROM python:3.9-alpine

RUN pip install --upgrade pip

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./src /src

WORKDIR /src


COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]