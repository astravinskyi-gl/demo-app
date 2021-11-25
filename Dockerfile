FROM python:3.8-alpine3.14

RUN mkdir /app
WORKDIR /app

COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 81

CMD [ "python", "./hello.py" ]
