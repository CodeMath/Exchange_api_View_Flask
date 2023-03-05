FROM python:3.9-slim


WORKDIR /app/
COPY . /app/

EXPOSE 5000

COPY ./app.py /app/
COPY ./templates /app/templates
COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt


CMD ["python", "./app.py"]