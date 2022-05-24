CREATE TRIGGER addMilhas AFTER 
INSERT ON cliente 
FOR EACH ROW 
INSERT INTO milhas(cod_cliente, quantidade)
VALUES (NEW.codigo, 0); 
