import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="MalikaEdaif@1995",
    database="alx_book_store"
)

try:
    print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error:
    print("Error")

mycursor = mydb.cursor()
# Execute SQL statements using the execute() method on the cursor
mycursor.execute("USE alx_book_store;")
#mycursor.execute("INFORMATION_SCHEMA.COLUMNS", "COLUMN_NAME", "COLUMN_TYPE", "TABLE_SCHEMA = 'alx_book_store'", "TABLE_NAME = 'Books';")

# Close connection to the databasse  
mycursor.close()
mydb.close()