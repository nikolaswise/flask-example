# syntax=docker/dockerfile:1.4
FROM --platform=$BUILDPLATFORM python:3.10-slim AS builder

ENV USER=username
ENV HOME=/home/$USER

RUN useradd -m -u 1000 $USER

WORKDIR $HOME/app

COPY requirements.txt $HOME/app
RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install -r requirements.txt

COPY . $HOME/app

RUN chmod +x start-script.sh
RUN chown -R $USER:$USER $HOME

USER $USER

ENTRYPOINT ["./start-script.sh"]