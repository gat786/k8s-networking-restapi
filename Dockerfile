# 
FROM python:3.8.14-slim-buster

# 
WORKDIR /code

# 
COPY ./ /code/

# install curl
RUN apt-get update && apt-get install -y curl

# 
RUN curl -sSL https://install.python-poetry.org | python3 - && \
  export PATH="/root/.local/bin:$PATH" && \
  poetry install --no-interaction --no-ansi
# 
CMD ["/root/.local/bin/poetry", "run", "start"]
