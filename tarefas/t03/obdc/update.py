from connect import connectbd
    
conct = connectbd()
curs = conct.cursor()

def updateResponsavelProjeto(codProjeto, novoResponsavel):
    
    update_script = '''
        UPDATE projeto SET codresponsavel = %s
        WHERE codigo = %s;
    '''
    update_value = (novoResponsavel, codProjeto)
    curs.execute(update_script, update_value)
    conct.commit()

updateResponsavelProjeto(codProjeto=2, novoResponsavel=4)

curs.close()
conct.close()