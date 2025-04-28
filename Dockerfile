FROM python:3.13-slim AS builder

WORKDIR /usr/src/app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

FROM python:3.13-slim

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app /usr/src/app
COPY . .

RUN pip install gunicorn

EXPOSE 8000

CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000", "--no-livereload"]