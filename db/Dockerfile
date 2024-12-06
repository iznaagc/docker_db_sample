FROM postgres:16.2

# init用SQLやスクリプトを配置するディレクトリ
COPY init-sql /docker-entrypoint-initdb.d/

# ポートはデフォルト5432だが、docker-composeで5444:5432でマッピングするため
# Postgres内部は5432でOK。外部から5444でアクセス可能。

# ここでは特にvolumeは指定していないため、コンテナ再作成時にデータは消える（永続化なし）。

# エントリポイントはデフォルトのまま
