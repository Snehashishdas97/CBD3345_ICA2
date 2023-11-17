FROM python:3.8-slim-buster

WORKDIR /python-docker

RUN pip install --no-cache-dir Flask numpy matplotlib

COPY . .

# Define environment variable
ENV NAME World

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
