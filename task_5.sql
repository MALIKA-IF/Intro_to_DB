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
mycursor.execute("INSERT INTO customer (customer_id,customer_name,email,address) 
VALUES (1,Cole Baidoo,cbaidoo@sandtech.com,123 Happiness Ave.)")
# Close connection to the databasse  
mycursor.close()
mydb.close()