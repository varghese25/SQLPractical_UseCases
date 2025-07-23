import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Tiju@25!",
    database="etltest"
)

print("Connected!" if conn.is_connected() else "Failed to connect")