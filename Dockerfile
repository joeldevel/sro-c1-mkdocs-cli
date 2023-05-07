FROM ubuntu

RUN apt-get update
RUN apt-get install python3 -y \
    && apt-get install pip -y \
    && pip install --upgrade pip \ 
    && pip install mkdocs

WORKDIR /home

ARG USER_ID
ARG GROUP_ID

RUN addgroup --gid $GROUP_ID user
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user

USER user

EXPOSE 8000

ENTRYPOINT ["mkdocs"]

CMD ["-h"]





