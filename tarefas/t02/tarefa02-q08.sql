CREATE TRIGGER deletePassageiros BEFORE
DELETE ON voo 
for each ROW 
DELETE FROM cliente_voo 
WHERE cliente_voo.codigo_voo = OLD.codigo;

CREATE TRIGGER deletePiloto BEFORE
DELETE ON voo 
FOR EACH ROW 
DELETE FROM piloto 
WHERE cliente_voo.cod_voo = OLD.codigo;
