FROM busybox:1.34.1-musl

RUN apt update && apt install -y python3-pip python3-dev

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 81

ENTRYPOINT ['python3']
CMD ['hello.py']
