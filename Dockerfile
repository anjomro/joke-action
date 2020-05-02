FROM python:alpine

WORKDIR /action-example/

# Copies code files m your action repository to the filesystem path `/` of the container
COPY entry.py entry.sh Pipfile Pipfile.lock /action-example/

RUN pip install pipenv && \
    pipenv install && \
    chmod +x /action-example/entry.sh
# Code file to execute when the docker container starts up (`entrypoi`)
ENTRYPOINT ["/action-example/entry.sh"]
