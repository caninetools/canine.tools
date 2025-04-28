FROM python:3.13-slim

ENV PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=off \
    PIP_DEFAULT_TIMEOUT=60

WORKDIR /usr/src/app

# copy files
COPY . .

# install things we need
RUN pip install --no-cache-dir -r requirements.txt

# run the site
EXPOSE 8000
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000", "--no-livereload"]