# 
FROM python:3.8.14-slim-buster

ENV POETRY_VERSION=1.6
# 
WORKDIR /code

# 
COPY ./ /code/

# 
RUN pip install "poetry==${POETRY_VERSION}"

# install dependencies
RUN poetry install --no-interaction --no-ansi
# 
CMD ["poetry", "run", "start"]
