# ベースイメージ
FROM amazonlinux:2023

# リポジトリの更新
RUN dnf -y update

# 必要なパッケージのインストール
RUN dnf install -y wget tar gzip glibc-langpack-ja nano cronie rsyslog findutils which procps 

# ロケールとタイムゾーンの設定
ENV LANG=ja_JP.UTF-8
ENV LANGUAGE=ja_JP:ja
ENV LC_ALL=ja_JP.UTF-8
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# Amazon Corretto 17のインストール
# RUN wget -O - https://corretto.aws/downloads/resources/17.0.11.9.1/amazon-corretto-17.0.11.9.1-linux-x64.tar.gz | tar -xz -C /opt
# ENV JAVA_HOME=/opt/amazon-corretto-17.0.11.9.1-linux-x64
# ENV PATH=$JAVA_HOME/bin:$PATH:/usr/sbin

# アプリケーションのソースコードをコピー
COPY . /usr/src/app
WORKDIR /usr/src/app

# start.shとcrontab.txtを実行可能にする
RUN chmod +x start.sh

# crontab ファイルを配置
COPY crontab.txt /etc/crontab

# cronの設定を追加
RUN crontab /etc/crontab

# スクリプト起動用のエントリポイントスクリプトを作成
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# エントリポイントスクリプトを実行
ENTRYPOINT ["/entrypoint.sh"]
