from datetime import date
from connect import connectbd
    
conct = connectbd()
curs = conct.cursor()


def createAtividade(codProjeto, dataFim, dataInicio, descricao):
    insert_script = '''
        INSERT INTO atividade(codprojeto, datafim, datainicio, descricao) 
        VALUES (%s, %s, %s, %s);
    '''
    insert_value = (codProjeto, dataFim, dataInicio, descricao)
    curs.execute(insert_script, insert_value)
    conct.commit()
    
createAtividade(
    codProjeto = 1,
    dataFim=date(2022, 8,20), 
    dataInicio = date(2022,7,10), 
    descricao="Exercícios",
)

curs.close()
conct.close()