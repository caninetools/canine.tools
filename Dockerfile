FROM python:3.13-slim AS builder

ENV PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=off \
    PIP_DEFAULT_TIMEOUT=60

WORKDIR /usr/src/app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

FROM python:3.13-slim

ENV PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=off \
    PIP_DEFAULT_TIMEOUT=60

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app /usr/src/app
COPY . .

RUN pip install mkdocs
RUN pip install gunicorn

EXPOSE 8000

CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000", "--no-livereload"]