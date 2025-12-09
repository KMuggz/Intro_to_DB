import mysql.connector
from mysql.connector import errorcode

# Configuration for database connection
DB_HOST = "localhost"  # my hostname
DB_USER = "root"  # my MySQL username
DB_PASSWORD = "SQLsucksdick69!"  # my MySQL password
DATABASE_NAME = "alx_book_store"

def create_database():
    """Connects to MySQL and creates the specified database if it doesn't exist."""
    db = None
    cursor = None
    try:
        # 1. Establish connection to the MySQL server (without specifying a database)
        db = mysql.connector.connect(
            host=DB_HOST,
            user=DB_USER,
            password=DB_PASSWORD
        )

        cursor = db.cursor()

        # 2. SQL statement to create the database (IF NOT EXISTS prevents failure)
        # Note: The backticks (`) are used around the database name as a best practice to handle names that might conflict with reserved keywords.
        sql_statement = f"CREATE DATABASE IF NOT EXISTS `{DATABASE_NAME}`"

        # 3. Execute the statement
        cursor.execute(sql_statement)

        # 4. Print success message
        print(f"Database '{DATABASE_NAME}' created successfully!")

    except mysql.connector.Error as err:
        # 5. Handle potential connection and execution errors
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("Error: Access denied. Check your username and password.")
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            # This should not happen since we are connecting without a DB, 
            # but kept for general error handling.
            print("Error: Database does not exist.")
        else:
            print(f"Failed to connect or create database: {err}")

    finally:
        # 6. Ensure the connection is closed
        if 'cursor' in locals() and cursor:
            cursor.close()
        if db and db.is_connected():
            db.close()
            # print("MySQL connection closed.")

if __name__ == "__main__":
    create_database()