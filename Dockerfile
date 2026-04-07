FROM python:3.12-slim-bookworm
WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y awscli && rm -rf /var/lib/apt/lists/*

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python3","app.py"]