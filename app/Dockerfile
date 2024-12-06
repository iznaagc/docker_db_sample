FROM python:3.11

WORKDIR /app

# pg_isready を使うために postgresql-client をインストール
RUN apt-get update && apt-get install -y postgresql-client && rm -rf /var/lib/apt/lists/*

RUN pip install psycopg2-binary

COPY app.py .

# デフォルトのエントリポイントなし
