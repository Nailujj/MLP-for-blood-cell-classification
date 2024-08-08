FROM python:3.10

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install mlflow

EXPOSE $PORT

CMD ["mlflow", "ui", "--host", "0.0.0.0", "--port", "$PORT"]
