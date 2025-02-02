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
mycursor.execute("USE alx_book_store")
mycursor.execute("SELECT 
    information_schema.COLUMNS.COLUMN_NAME AS 'Field',
    information_schema.COLUMNS.COLUMN_TYPE AS 'Type',
    information_schema.COLUMNS.IS_NULLABLE AS 'Null',
    information_schema.COLUMNS.COLUMN_KEY AS 'Key',
    information_schema.COLUMNS.COLUMN_DEFAULT AS 'Default',
    information_schema.COLUMNS.EXTRA AS 'Extra'
FROM 
    information_schema.TABLES
INNER JOIN
    information_schema.COLUMNS ON information_schema.TABLES.TABLE_NAME =  information_schema.COLUMNS.TABLE_NAME    
WHERE
    information_schema.TABLES.TABLE_NAME = 'books'")

# Close connection to the databasse  
mycursor.close()
mydb.close()