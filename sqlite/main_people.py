

# import sqlite3


# conn = sqlite3.connect("people.sqlite")
# c = conn.cursor()

# query = """
# INSERT INTO friends (f_name, l_name, email)
# VALUES ('Lucas ', 'Graham', 'lgraham@gmail.com');
# """

# c.execute(query)
# conn.commit()
# conn.close()



# import sqlite3

# conn = sqlite3.connect("people.sqlite")
# c = conn.cursor()
# with conn:
#     c.execute("INSERT INTO friends VALUES ('Dominic', 'Rockwell', 'd.rockwell@company.com')")
#     c.execute("INSERT INTO friends VALUES ('Richard', 'Rodman', 'RR@gmail.com')")
    


# import sqlite3

# conn = sqlite3.connect("people.sqlite")
# c = conn.cursor()
# with conn:
#     c.execute("SELECT * FROM friends")
#     print(c.fetchall())



# import sqlite3

# conn = sqlite3.connect("people.sqlite")
# c = conn.cursor()
# with conn:
#     c.execute("SELECT * FROM friends WHERE l_name LIKE 'R%'")
#     print(c.fetchone())
    
    
    
# import sqlite3

# conn = sqlite3.connect("people.sqlite")
# c = conn.cursor()

# name = input("Enter a name: ")
# with conn:
#     c.execute("SELECT * FROM friends WHERE f_name =?", (name,))
#     res = c.fetchall()
# if res:
#     print(res)
# else:
#     print("No such name!")
    
    
    
    
# import sqlite3

# conn = sqlite3.connect("people.sqlite")
# c = conn.cursor()
    
# friends = [
#     ("Emily", "Carter", "ecarter@emailexample.com"),
#     ("Nathan", "Scott", "nscott@mailservice.com"),
#     ("Jessica", "Moran", "jmoran@onlinemail.org"),
# ]

# with conn:
#     c.executemany("INSERT INTO friends VALUES(?,?,?)", friends)
    




import sqlite3

conn = sqlite3.connect("people.sqlite")
c = conn.cursor()    
    
ids = (1, 3, 5)

with conn:
    c.execute("SELECT * FROM friends WHERE rowid IN (?,?,?)", ids)
    print(c.fetchall())

[('John', 'Smith', 'johnsmith@gmail.com'), ('Alan', 'Goldman', 'AGoldman@gmail.com'), ('Peter', 'Miller', 'peter@mymail.com')]