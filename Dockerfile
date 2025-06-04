FROM python:3.13-slim AS mkdocs-builder

ENV PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=off \
    PIP_DEFAULT_TIMEOUT=60

WORKDIR /usr/src/app

# copy files
COPY . .

# install things we need & build
RUN pip install --no-cache-dir -r requirements.txt
RUN mkdocs build

FROM caddy:alpine

COPY --from=mkdocs-builder /usr/src/app/site /usr/share/caddy
COPY Caddyfile /etc/caddy/Caddyfile

EXPOSE 80