from models import database

def connectbd():
    database.connect()
    
def closeconnectbd():
    database.close()