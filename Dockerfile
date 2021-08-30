FROM python:3.8-slim-buster

WORKDIR "/app"

COPY ./app .

RUN apt-get update  &&  \
    apt-get install -y git && \
    apt-get install -y curl && \
    apt-get install -y iputils-ping && \
    apt install -y iproute2 && \
    pip install -e .

RUN chmod 700 run.sh

EXPOSE 5000

CMD [ "./run.sh"]