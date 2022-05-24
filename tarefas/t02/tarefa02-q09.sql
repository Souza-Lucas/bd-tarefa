INSERT INTO milhas(cod_cliente, quantidade)
VALUES (1,  10);

CREATE TRIGGER addCard AFTER
UPDATE ON cliente
FOR EACH ROW 
INSERT INTO milhas(cod_cliente, quantidade)
VALUES(OLD.codigo, 0) ;

UPDATE cliente SET endereco = "Rua Doutor Heráclio Pires"
WHERE cliente.codigo = 1;
