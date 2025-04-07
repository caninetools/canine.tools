FROM python:3.13-slim
WORKDIR /usr/src/app

# copy files
COPY . .

# install things we need
RUN pip install --no-cache-dir -r requirements.txt

# run the site
EXPOSE 8000
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]