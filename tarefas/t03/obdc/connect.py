import psycopg2

host = 'localhost'
dbname = 'tarefa03bd'
user = 'postgres'
password = 'postgres'
port = '5432'
conct = None
curs = None

def connectbd (): 
    
    try:
        conct = psycopg2.connect(
            host = host,
            dbname = dbname,
            user = user,
            password = password,
            port = port
        )
    
        return conct
        
    except Exception as error:
        print(error)
