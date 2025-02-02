import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="MalikaEdaif@1995",
    database="alx_book_store"
)

if mydb:
    print("Database 'alx_book_store' created successfully!")
else:    
    print("Error")

mycursor = mydb.cursor()
# Execute SQL statements using the execute() method on the cursor
mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")

# Close connection to the databasse  
mycursor.close()
mydb.close()