# port25 SMTP container
#----------------------------------------
# ベースイメージとしてPythonを使用
FROM python:3.9-slim

# 必要なパッケージのインストール
RUN pip install --no-cache-dir aiosmtpd

# SMTPサーバースクリプトをコンテナにコピー
COPY ./smtp/smtp_server.py /smtp_server.py

# ポート25を公開
EXPOSE 25

# SMTPサーバースクリプトを実行
CMD ["python", "/smtp_server.py"]