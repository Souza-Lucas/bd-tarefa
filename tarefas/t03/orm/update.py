from models import *
from connect import connectbd, closeconnectbd

connectbd()

def updateResponsavelProjeto(codProjeto, novoResponsavel):
    projeto = Projeto.select().where(Projeto.codigo == codProjeto).get()
    
    
    projeto.codresponsavel = novoResponsavel
    projeto.save()
    
    
updateResponsavelProjeto(codProjeto=int(1), novoResponsavel=3)

closeconnectbd()