import os
import psycopg2

db_host = os.environ.get('DB_HOST', 'localhost')
db_port = os.environ.get('DB_PORT', '5432')
db_user = os.environ.get('DB_USER', 'myuser')
db_password = os.environ.get('DB_PASS', 'mypass')
db_name = os.environ.get('DB_NAME', 'mydb')

conn = psycopg2.connect(
    host=db_host,
    port=db_port,
    user=db_user,
    password=db_password,
    dbname=db_name
)

cur = conn.cursor()
cur.execute("SELECT tablename FROM pg_tables WHERE schemaname='public';")
tables = cur.fetchall()
print("Tables in database:")
for table in tables:
    print(table[0])

cur.close()
conn.close()
