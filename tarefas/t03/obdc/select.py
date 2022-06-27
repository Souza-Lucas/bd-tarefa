from connect import connectbd
    
conct = connectbd()
curs = conct.cursor()

def selectProjetoJoinAtividades():
    
    select_script = '''
        SELECT 
            Projeto.codigo,
            Projeto.nome, 
            Projeto.descricao,
            Projeto.codresponsavel,
            Projeto.coddepto,
            Projeto.datainicio, 
            Projeto.datafim,
            Atividade.codigo,
            Atividade.descricao,
            Atividade.codprojeto,
            Atividade.datainicio, 
            Atividade.datafim
        FROM Projeto INNER JOIN Atividade      
        ON Projeto.codigo = Atividade.codprojeto;
    '''
    
    curs.execute(select_script)
    conct.commit()
    
    records = curs.fetchall()
    return records
    
   

results = selectProjetoJoinAtividades()

for row in results:
    print(row)

curs.close()
conct.close()