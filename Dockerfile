FROM python:3.11
ARG UID=${USER_ID}
ARG GID=${GROUP_ID}
RUN groupadd -g $GID -o mkdocs
RUN useradd -m -u ${UID} -g ${GID} -o -d /mkdocs -s /bin/bash mkdocs
RUN pip install mkdocs mkdocs-material
COPY --chown=${UID}:${GID} ./src /mkdocs
WORKDIR /mkdocs
EXPOSE 8080
CMD ["mkdocs", "serve"]
