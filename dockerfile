FROM python:3.7
COPY ./src/ /mkdocs_skeleton/
WORKDIR /mkdocs_skeleton/
RUN pip install mkdocs
EXPOSE 8080
CMD ["mkdocs", "serve"]