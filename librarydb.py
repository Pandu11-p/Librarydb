import mysql.connector

# Connect to MySQL database
def connect_to_db():
    return mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        password="MySQL111",
        database="librarydb"
    )

# Menu options
def menu():
    print("\nLibrary Management System")
    print("1. Read Data")
    print("2. Create Data")
    print("3. Update Data")
    print("4. Delete Data")
    print("5. Exit")
    return int(input("Choose an option: "))

# Read data
def read_data(cursor):
    table = input("Enter table name (Books, Loans, Members): ")
    query = f"SELECT * FROM {table}"
    cursor.execute(query)
    results = cursor.fetchall()
    for row in results:
        print(row)

# Create data
def create_data(cursor, connection):
    table = input("Enter table name (Books, Loans, Members): ")
    if table == "Books":
        title = input("Enter book title: ")
        author = input("Enter author name: ")
        genre = input("enter genre: ")
        published_year = int(input("enter published year :"))
        query = "INSERT INTO Books (title, author, genre, published_year) VALUES (%s, %s, %s, %s)"
        cursor.execute(query, (title, author, genre, published_year))
    elif table == "Loans":
        member_id = int(input("Enter member ID: "))
        book_id = int(input("Enter book ID: "))
        query = "INSERT INTO Loans (member_id, book_id) VALUES (%s, %s)"
        cursor.execute(query, (member_id, book_id))
    elif table == "Members":
        name = input("Enter member name: ")
        email = input("Enter member email: ")
        phone_number = input("Enter phone number: ")  
        query = "INSERT INTO Members (name, email, phone_number) VALUES (%s, %s, %s)"
        cursor.execute(query, (name, email, phone_number))
    else:
        print("Invalid table name!")
        return
    connection.commit()
    print(f"Data added to {table}.")

# Update data
def update_data(cursor, connection):
    table = input("Enter table name (Books, Loan, Members): ")
    column = input(f"Enter column to update in {table}: ")
    new_value = input(f"Enter new value for {column}: ")
    condition_column = input(f"Specify condition column in {table}: ")
    condition_value = input(f"Specify condition value for {condition_column}: ")
    
    query = f"UPDATE {table} SET {column} = %s WHERE {condition_column} = %s"
    cursor.execute(query, (new_value, condition_value))
    connection.commit()
    print(f"{table} updated successfully.")

# Delete data
def delete_data(cursor, connection):
    table = input("Enter table name (Books, Loan, Members): ")
    condition_column = input(f"Specify condition column in {table}: ")
    condition_value = input(f"Specify condition value for {condition_column}: ")
    
    query = f"DELETE FROM {table} WHERE {condition_column} = %s"
    cursor.execute(query, (condition_value,))
    connection.commit()
    print(f"Data deleted from {table}.")

# Main program loop
def main():
    connection = connect_to_db()
    cursor = connection.cursor()

    while True:
        choice = menu()
        
        if choice == 1:
            read_data(cursor)
        elif choice == 2:
            create_data(cursor, connection)
        elif choice == 3:
            update_data(cursor, connection)
        elif choice == 4:
            delete_data(cursor, connection)
        elif choice == 5:
            print("Exiting program.")
            break
        else:
            print("Invalid choice! Please try again.")
    
    cursor.close()
    connection.close()

if __name__ == "__main__":
    main()
