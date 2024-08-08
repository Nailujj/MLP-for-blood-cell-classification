FROM python:3.10

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install mlflow

# Make port 5000 available to the world outside this container
EXPOSE 5000

ENV MLFLOW_TRACKING_URI=http://0.0.0.0:5000

CMD ["mlflow", "ui", "--host", "0.0.0.0"]
